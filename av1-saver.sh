#!/bin/bash

# Check if the OS is Linux or macOS
if [[ $(uname) != "Linux" && $(uname) != "Darwin" ]]; then
  echo "Error: This script only supports Linux and macOS."
  exit 1
fi

# Find if ImageMagick is magick or convert
magick=$(command -v magick || command -v convert)

# Function to check if a command is available
check_command() {
  local cmd="$1"
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "Error: $cmd is not installed."
    exit 1
  fi
}

# Check required commands
for cmd in find ffmpeg exiftool "$magick"; do
  check_command "$cmd"
done

# Colors
NC="\033[0m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"

# Default directories
inputdir=""
outputdir="./output"
total_files=0
converted_files=0

# ImageMagick
quality="80%"

# FFmpeg
video_codec="libsvtav1"
video_bitrate="2M"
video_crf=35
audio_codec="libvorbis"
audio_bitrate="320k"

# Function to convert size in bytes to a human-readable format with adaptive units
human_readable_size() {
  export LC_NUMERIC=C
  local size_in_bytes=$1
  numfmt --to=iec -i --suffix=B --format="%.2f" "$size_in_bytes"
}

# Function to print usage help
print_help() {
  echo "Usage: $0 -i <input_directory> [-o <output_directory>]"
}

# Function to count files in the input directory
count_files() {
  total_files=$(find "$inputdir" -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.mov" -o -name "*.flv" -o -name "*.wmv" -o -name "*.webm" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.webp" \) | wc -l)
}

# Function to update progress
update_progress() {
  converted_files=$((converted_files + 1))
  progress=$((converted_files * 100 / total_files))
  echo -ne "\rProgress: $converted_files/$total_files ($progress%) ["
  for ((i = 0; i < progress; i++)); do
    echo -n "#"
  done
  for ((i = progress; i < 100; i++)); do
    echo -n " "
  done
  echo -n "]"
}

# Function to convert photo files
convert_photo() {
  count_files

  mkdir -p "$outputdir"

  find "$inputdir" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.webp" \) | while IFS= read -r filename; do
    if [[ -f "$filename" ]]; then
      relative_path="${filename#$inputdir/}"
      output_file="$outputdir/$relative_path"
      mkdir -p "$(dirname "$output_file")" >/dev/null 2>&1

      if $magick "$filename" -quality "$quality" "$output_file.avif" >/dev/null 2>&1; then
        if exiftool -TagsFromFile "$filename" -CreateDate -ModifyDate -FileModifyDate -overwrite_original "$output_file.avif" >/dev/null 2>&1; then
          rm "$filename"
        else
          echo -e "${RED}Error${NC}: Failed to copy metadata for $filename" >/dev/null
        fi
      else
        echo -e "${RED}Error${NC}: Conversion of $filename failed." >/dev/null
      fi
    fi

    update_progress
  done

  echo ""
}

# Function to convert video files
convert_video() {
  count_files

  mkdir -p "$outputdir"

  find "$inputdir" -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.mov" -o -name "*.flv" -o -name "*.wmv" -o -name "*.webm" \) | while IFS= read -r filename; do
    if [[ -f "$filename" ]]; then
      relative_path="${filename#$inputdir/}"
      output_file="$outputdir/$relative_path"
      mkdir -p "$(dirname "$output_file")" >/dev/null 2>&1

      if ffmpeg -nostdin -i "$filename" -c:v "$video_codec" -b:v "$video_bitrate" -crf "$video_crf" -c:a "$audio_codec" -b:a "$audio_bitrate" "$output_file.mkv" >/dev/null 2>&1; then
        if exiftool -TagsFromFile "$filename" -CreateDate -ModifyDate -FileModifyDate -overwrite_original "$output_file.mkv" >/dev/null 2>&1; then
          rm "$filename"
        else
          echo -e "${RED}Error${NC}: Failed to copy metadata for $filename" >/dev/null
        fi
      else
        echo -e "${RED}Error${NC}: Conversion of $filename failed." >/dev/null
      fi
    fi

    update_progress
  done

  echo ""
}

# Parse arguments
while getopts "i:o:h" opt; do
  case $opt in
  i)
    inputdir="$OPTARG"
    ;;
  o)
    outputdir="$OPTARG"
    ;;
  h)
    print_help
    exit 0
    ;;
  \?)
    echo -e "${RED}Error${NC}: Invalid option -$OPTARG" >&2
    print_help
    exit 1
    ;;
  :)
    echo -e "${RED}Error${NC}: Option -$OPTARG requires an argument." >&2
    print_help
    exit 1
    ;;
  esac
done

# Check if input directory is empty
if [[ -z "$inputdir" ]]; then
  echo -e "${RED}Error${NC}: Input directory is empty." >&2
  print_help
  exit 1
fi

# Create output directory if it doesn't exist
mkdir -p "$outputdir" >/dev/null 2>&1

# Calculate the input directory size
inputsize_bytes=$(($(find "$inputdir" -type f -exec du -k {} + | awk '{s+=$1} END {print s}') * 1024))
inputsize_human=$(human_readable_size $inputsize_bytes)
echo -e "Input directory size: ${YELLOW}$inputsize_human${NC}\n"

# Convert photos and videos
if [[ -d "$inputdir" ]]; then
  echo "Converting photos in $inputdir"
  convert_photo
  echo "Converting videos in $inputdir"
  convert_video
else
  echo -e "${RED}Error${NC}: $inputdir is not a directory." >&2
  print_help
  exit 1
fi

# Delete all empty directories in the input directory
find "$inputdir" -type d -empty -delete >/dev/null 2>&1

# For MacOS, delete all .DS_Store files in the input directory
[[ $(uname) == "Darwin" ]] && find "$inputdir" -name ".DS_Store" -delete >/dev/null 2>&1

# Check if there is any file left in the input directory
[[ $(find "$inputdir" -type f | wc -l) -eq 0 ]] && echo -e "${GREEN}Success${NC}: All files in $inputdir have been converted and moved to $outputdir" || echo -e "${RED}Error${NC}: Some files in $inputdir have not been converted and moved to $outputdir"

# Calculate the output directory size
outputsize_bytes=$(($(find "$outputdir" -type f -exec du -k {} + | awk '{s+=$1} END {print s}') * 1024))
outputsize_human=$(human_readable_size $outputsize_bytes)
echo -e "Output directory size: ${GREEN}$outputsize_human${NC}\n"

# Print the total size saved
savingsize_bytes=$((inputsize_bytes - outputsize_bytes))
savingsize_human=$(human_readable_size $savingsize_bytes)
savingpercentage=$((savingsize_bytes * 100 / inputsize_bytes))
echo -e "Total size saved: ${GREEN}$savingsize_human${NC} (${YELLOW}$savingpercentage%)${NC}"
