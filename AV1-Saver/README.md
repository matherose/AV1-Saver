# AV1 Saver - Space-Saving Solution for Photos and Videos

Are you tired of wasting storage space on outdated video and photo codecs? 
Chuck Testa is your god and although you pray to him 5x a day, would you rather, without offend him, his 45GB ad in 6k HDR 10bit take up less space in your hard drive?
Welcome to the AV1 Saver project! My mission is to help you save space while preserving the quality of your precious memories.

> [!WARNING]
> (For now, the script only works on Linux and MacOS)

## Requirements
I've designed this project to be as straightforward as possible, relying on just a few essential tools:
- **FFmpeg** to convert videos
- **ImageMagick** to convert photos
- **exiftool** to copy metadata from the original file to the new one

## Installation
Installing AV1 Saver is a breeze. Simply download the script and run it from any location. For added convenience, I recommend placing it in your home directory and creating a symlink in your /usr/bin directory, allowing you to execute it from anywhere.

## Usage
To put AV1 Saver to work, specify the input folder (ideal for batch processing). You can also specify the output folder; otherwise, the script will create an output folder in the current directory.

```bash
./av1-saver.sh -i /path/to/input/folder -o /path/to/output/folder
```

If you forget to provide the input folder, the script will display the usage information:

```bash
Error: Input directory is required.
Usage: ./av1-saver.sh -i <input_directory> [-o <output_directory>]
```

## Quality Matters

### Photos
For photos, the script converts them into the AVIF format with a quality setting of 80. AVIF is a cutting-edge format more efficient than JPEG, and even at a quality of 80, the difference is hardly noticeable. If you wish to adjust the quality, simply edit the script and modify the ***quality*** variable.

### Videos
The same principle applies to videos, which are converted to MKV format using AV1. Here are the default settings:

    - **Bitrate**: 2M (recommended by FFmpeg).
    - **CRF**: 35 (recommended by FFmpeg).
    - **Audio codec**: Vorbis (chosen for its open-source nature and because i really like the team behind).
    - **Audio bitrate**: 320k (equivalent to CD quality, more than sufficient for videos).

While these settings work well for most scenarios, feel free to customize them by editing the script to meet your specific needs.

With AV1 Saver, you can enjoy high-quality photos and videos while reclaiming valuable storage space. Give it a try and experience the future of media compression today! 🌟
![oh no! there's chuck in my markdown!](https://i.imgflip.com/81wq77.jpg)
