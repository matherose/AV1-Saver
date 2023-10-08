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
  total_files=$(find "$inputdir" -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.mov" -o -name "*.flv" -o -name "*.wmv" -o -name "*.webm" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.webp" \) | wc -l)
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

# Function to convert video files
convert_video() {
  count_files
  find "$inputdir" -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.mov" -o -name "*.flv" -o -name "*.wmv" -o -name "*.webm" \) | while read filename; do
    filename_without_extension=$(basename "$filename" | cut -f 1 -d '.')
    output_subdir=$(dirname "$filename" | sed "s|$inputdir|$outputdir|")
    mkdir -p "$output_subdir"

    # Use ffmpeg to convert the video format with error handling
    if ffmpeg -i "$filename" -c:v libsvtav1 -b:v 2M -crf 35 -c:a libvorbis -b:a 320k \
      "$output_subdir/$filename_without_extension.mkv" >/dev/null 2>&1; then
      # Copy date-related metadata using exiftool
      if exiftool -TagsFromFile "$filename" -CreateDate -ModifyDate -FileModifyDate -overwrite_original "$output_subdir/$filename_without_extension.mkv" >/dev/null 2>&1; then
        rm "$filename"
        update_progress
      fi
    else
      echo "Conversion of $filename failed."
    fi
  done
}

# Function to convert photo files
convert_photo() {
  count_files
  find "$inputdir" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.webp" \) | while read filename; do
    filename_without_extension=$(basename "$filename" | cut -f 1 -d '.')
    output_subdir=$(dirname "$filename" | sed "s|$inputdir|$outputdir|")
    mkdir -p "$output_subdir"

    # Convert to AVIF format using magick while preserving metadata with error handling
    if magick "$filename" -quality 80% "$output_subdir/$filename_without_extension.avif"; then
      # Copy date-related metadata using exiftool
      if exiftool -TagsFromFile "$filename" -CreateDate -ModifyDate -FileModifyDate -overwrite_original "$output_subdir/$filename_without_extension.avif" >/dev/null 2>&1; then
        rm "$filename"
        update_progress
      fi
    else
      echo "Conversion of $filename failed."
    fi
  done
}

# Parse command-line arguments
while getopts ":i:o:" opt; do
  case "$opt" in
    i) inputdir="$OPTARG";;
    o) outputdir="$OPTARG";;
    \?) echo "Invalid option: -$OPTARG" >&2
      print_help
      exit 1;;
    :)  echo "Option -$OPTARG requires an argument." >&2
      print_help
      exit 1;;
  esac
done

# Check if input directory is provided
if [ -z "$inputdir" ]; then
  echo "Error: Input directory is required."
  print_help
  exit 1
fi

# Create the output directory if it doesn't exist
[ -d "$outputdir" ] || mkdir -p "$outputdir"

# Run the conversion functions
convert_video
convert_photo

echo -e "\nConversion completed!"
