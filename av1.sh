#!/bin/bash

# Check if the script is running in Linux or macOS
if [[ "$OSTYPE" != "linux-gnu"* && "$OSTYPE" != "darwin"* ]]; then
    echo -e "\033[0;31mThis script only works on Linux or macOS\033[0m"
    exit 1
fi

# FFMPeg variables
ffmpeg_video_codec="libsvtav1"
ffmpeg_video_bitrate="2M"
ffmpeg_video_crf="35"
ffmpeg_video_preset="8"
ffmpeg_video_yuv="yuvj420p"
ffmpeg_video_grain="25"
ffmpeg_video_grain_denoise="0"
ffmpeg_audio_codec="libopus"
ffmpeg_audio_bitrate="192k"
ffmpeg_silence="-loglevel info"

# AVIFenc variables
avienc_speed="8"
avienc_threads="all"
avienc_yuv="420"
avifenc_quality_min="0"
avifenc_quality_max="63"

# Colors
red="\033[0;31m"
green="\033[0;32m"
blue="\033[0;34m"
reset="\033[0m"

# Default values
input_dir="."
output_dir="./output"
input_dir_size=""
output_dir_size=""

# Check if a command is installed
check_command() {
    local cmd="$1"
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo -e "${red}Error: $cmd is not installed.${reset}"
        exit 1
    fi
}

# Convert bytes to human readable size
human_readable_size() {
    local size_in_bytes=$1
    numfmt --to=iec --suffix=B --format="%.2f" <<<"$size_in_bytes"
}

# Count the number of files to convert
count_files() {
    total_files=$(find "$input_dir" -type f -exec file --mime-type {} \; | grep -E "video|image" | wc -l)
}

# Print help
print_help() {
    echo "Usage: $0 -i <input_directory> [-o <output_directory>]"
}

# Update progress bar
update_progress() {
    converted_files=$((converted_files + 1))
    progress=$((converted_files * 100 / total_files))
    bar="["
    characters=25
    completed_chars=$((progress * characters / 100))
    remaining_chars=$((characters - completed_chars))

    for ((i = 0; i < completed_chars; i++)); do
        bar+="#"
    done
    for ((i = 0; i < remaining_chars; i++)); do
        bar+=" "
    done
    bar+="]"


    tput sc
    tput cuu1
    tput el
    printf "Progress: %d/%d (%d%%) %s" "$converted_files" "$total_files" "$progress" "$bar"
    tput rc
}

# Convert media files
convert_media() {
    local input_dir="$1"
    local output_dir="$2"

    count_files

    echo "Total files to convert: $total_files"

    rsync -a --exclude=".*" --include="*/" --exclude="*" "$input_dir" "$output_dir"

    find "$input_dir" -type f | while read -r file; do
        mime=$(file --brief --mime-type "$file")
        filename=$(basename "$file")
        extension="${filename##*.}"
        filename="${filename%.*}"

        relative_path=$(dirname "$file" | sed "s|$input_dir||")
        relative_path="${relative_path#/}"


        if [[ "$mime" == "video/"* ]]; then
            output_filename="${filename}.mkv"
        elif [[ "$mime" == "image/"* ]]; then
            output_filename="${filename}.avif"
        else
            echo -e "${red}Skipping $filename (Unknown MIME type: $mime)${reset}"
            update_progress
            continue
        fi

        output_filename_path="$output_dir/$(basename $input_dir)/$(basename $relative_path)/$output_filename"

        if [ -f "$output_filename_path" ]; then
            echo -e "${green}Skipping $filename (Already Converted)${reset}"
            update_progress
            continue
        fi

        if [[ "$mime" == "video/"* ]]; then
            ffmpeg -i "$file" -c:v $ffmpeg_video_codec -b:v $ffmpeg_video_bitrate -crf $ffmpeg_video_crf -preset $ffmpeg_video_preset -pix_fmt $ffmpeg_video_yuv -g $ffmpeg_video_grain -noise_reduction $ffmpeg_video_grain_denoise -c:a $ffmpeg_audio_codec -b:a $ffmpeg_audio_bitrate $ffmpeg_silence "$output_filename_path" >/dev/null 2>&1
        elif [[ "$mime" == "image/"* ]]; then
            avifenc -s $avienc_speed -j $avienc_threads -y $avienc_yuv --min $avifenc_quality_min --max $avifenc_quality_max -o "$output_filename_path" "$file" >/dev/null 2>&1

            exiftool -overwrite_original -TagsFromFile "$file" "$output_filename_path" >/dev/null 2>&1
        fi

        update_progress
    done
}

# Check if the script is running in Linux or macOS
if [ $# -eq 0 ]; then
    echo -e "${red}No arguments provided${reset}"
    echo -e "${blue}Usage: av1.sh -i <input_directory> -o <output_directory>${reset}"
    exit 1
fi

# Parse arguments
while getopts ":i:o:" opt; do
    case $opt in
    i)
        input_dir="$OPTARG"
        ;;
    o)
        output_dir="$OPTARG"
        ;;
    \?)
        echo -e "${red}Invalid option -$OPTARG${reset}"
        print_help
        exit 1
        ;;
    :)
        echo -e "${red}Option -$OPTARG requires an argument${reset}"
        print_help
        exit 1
        ;;
    esac
done

# Remove trailing slash
input_dir=${input_dir%/}
output_dir=${output_dir%/}

# Create output directory
mkdir -p "$output_dir" >/dev/null 2>&1

# Print input and output directories
if [[ $(uname) == "Darwin" ]]; then
    inputsize_bytes=$(du -sk "$input_dir" | awk '{print $1}')
else
    inputsize_bytes=$(du -sk --apparent-size "$input_dir" | awk '{print $1}')
fi

# Print input directory size
inputsize_human=$(human_readable_size $((inputsize_bytes * 1024)))
echo -e "Input directory size: ${blue}$inputsize_human${reset}\n"

# Delete .DS_Store files
[[ $(uname) == "Darwin" ]] && find "$input_dir" -name ".DS_Store" -delete >/dev/null 2>&1

# Check if the commands are installed
check_command "ffmpeg"
check_command "avifenc"

# Check if the input directory is empty
if [ -z "$input_dir" ]; then
    echo -e "${red}Error: Input directory is empty.${reset}"
    print_help
    exit 1
fi

# Check if the input directory exists, then convert the media files
converted_files=0
convert_media "$input_dir" "$output_dir"

# If system is MacOS, use gdu instead of du
if [[ $(uname) == "Darwin" ]]; then
    outputsize_bytes=$(du -sk "$output_dir" | awk '{print $1}')
else
    outputsize_bytes=$(du -sk --apparent-size "$output_dir" | awk '{print $1}')
fi

# Print output directory size
outputsize_human=$(human_readable_size $((outputsize_bytes * 1024)))
echo -e "Output directory size: ${outputsize_human}\n"

# Print total size saved
savingsize_bytes=$((inputsize_bytes - outputsize_bytes))
savingsize_human=$(human_readable_size $((savingsize_bytes * 1024)))

# Print total size saved percentage
if [ "$inputsize_bytes" -eq 0 ]; then
    echo -e "Total size saved: N/A (N/A%)"
else
    savingpercentage=$((savingsize_bytes * 100 / inputsize_bytes))
    echo -e "Total size saved: ${green}$savingsize_human${reset} (${savingpercentage}%)"
fi