#!/bin/bash

# Check if the OS is Linux or macOS
if [[ $(uname) != "Linux" && $(uname) != "Darwin" ]]; then
  echo "Error: This script only supports Linux and macOS."
  exit 1
fi

# Default directories
inputdir=""
outputdir="./output"
total_files=0
converted_files=0

# Function to print usage help
print_help() {
  echo "Usage: $0 -i <input_directory> [-o <output_directory>]"
}

# Function to count files in the input directory
count_files() {
  total_files=$(find "$inputdir" -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.mov" -o -name "*.flv" -o -name "*.wmv" -o -name "*.webm" \) | wc -l)
}

# Function to update progress
update_progress() {
  converted_files=$((converted_files + 1))
  progress=$((converted_files * 100 / total_files))
  echo -ne "Progress: $converted_files/$total_files ($progress%) ["
  for ((i = 0; i < progress; i++)); do
    echo -n "#"
  done
  for ((i = progress; i < 100; i++)); do
    echo -n " "
  done
  echo -ne "]\r"
}

# Function to convert photo files
convert_photo() {
  count_files
  find "$inputdir" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.webp" \) -print0 | while IFS= read -r -d '' filename; do
    filename_without_extension=$(basename "$filename" | cut -f 1 -d '.')
    relative_path="${filename%/*}"
    output_subdir="$outputdir/$relative_path"
    output_file="$output_subdir/$filename_without_extension.avif"
    mkdir -p "$output_subdir" >/dev/null 2>&1

    # Use magick to convert the photo format with -y option for overwriting
    if magick "$filename" -quality 80% "$output_file" >/dev/null 2>&1; then
      # Copy date-related metadata using exiftool
      if exiftool -TagsFromFile "$filename" -CreateDate -ModifyDate -FileModifyDate -overwrite_original "$output_file" >/dev/null 2>&1; then
        rm "$filename"
      else
        echo "Error: Failed to copy metadata for $filename" >/dev/null
      fi
    else
      echo "Conversion of $filename failed." >/dev/null
    fi

    update_progress
  done
}

# Function to convert video files
convert_video() {
  count_files
  find "$inputdir" -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.mov" -o -name "*.flv" -o -name "*.wmv" -o -name "*.webm" \) -print0 | while IFS= read -r -d '' filename; do
    filename_without_extension=$(basename "$filename" | cut -f 1 -d '.')
    relative_path="${filename%/*}"
    output_subdir="$outputdir/$relative_path"
    output_file="$output_subdir/$filename_without_extension.mkv"
    mkdir -p "$output_subdir" >/dev/null 2>&1

    # Use ffmpeg to convert the video format with -y option for overwriting
    if ffmpeg -nostdin -i "$filename" -c:v libsvtav1 -b:v 2M -crf 35 -c:a libvorbis -b:a 320k -y "$output_file" >/dev/null 2>&1; then
      # Copy date-related metadata using exiftool
      if exiftool -TagsFromFile "$filename" -CreateDate -ModifyDate -FileModifyDate -overwrite_original "$output_file" >/dev/null 2>&1; then
        rm "$filename"
      else
        echo "Error: Failed to copy metadata for $filename" >/dev/null
      fi
    else
      echo "Conversion of $filename failed." >/dev/null
    fi

    update_progress
  done
}

# Parse command-line arguments
while getopts ":i:o:" opt; do
  case "$opt" in
  i) inputdir="$OPTARG" ;;
  o) outputdir="$OPTARG" ;;
  \?)
    echo "Invalid option: -$OPTARG" >&2
    print_help
    exit 1
    ;;
  :)
    echo "Option -$OPTARG requires an argument." >&2
    print_help
    exit 1
    ;;
  esac
done

# Check if input directory is provided
if [ -z "$inputdir" ]; then
  echo "Error: Input directory is required."
  print_help
  exit 1
fi

# Create the output directory if it doesn't exist
[ -d "$outputdir" ] || mkdir -p "$outputdir" >/dev/null 2>&1

# Run the conversion functions
convert_video

echo -e "\nConversion completed!"
