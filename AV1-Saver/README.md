# AV1 Saver

The aim of this project is to save space when storing videos and photos.
We're no longer in the early 2000s, so we no longer need to store videos in MPEG-2 or MPEG-4, we have better codecs and even better ones are on the way. Today we have AV1, which is royalty-free and open-source, but beyond that it's also much more efficient than MPEG-4. It's so efficient that it can even be used for photos, which is the subject of this project. The idea is to save space when storing photos and videos without compromising their quality.

## (For now, the script only works on Linux and MacOs)

### Requirements
I wanted to make this project as simple as possible, so I decided to use only :
- **FFmpeg** to convert videos
- **ImageMagick** to convert photos
- **exiftool** to copy metadata from the original file to the new one

### Installation
Since it's just a script that ask for user input, you can just download it and run it from anywhere.
I recommend you to put it in your home directory and create a symlink to it in your `/usr/bin` directory, so you can run it from anywhere.

### Usage
To use the script, it is mandatory to indicate the input folder (since it's designed for batch processing). You can also indicate the output folder, if you don't, the script will create a new folder named `output` in the folder where you run it.

```bash
./av1-saver.sh -i /path/to/input/folder -o /path/to/output/folder
```

If you don't indicate the input folder, the help will be displayed.

```bash
Error: Input directory is required.
Usage: ./test.sh -i <input_directory> [-o <output_directory>]
```

### Quality
- For the photos, the script will convert them to AVIF with the **Quality** settings to 80. Since AVIF is a new format more efficient than JPEG, the quality is not the same. But the difference is not noticeable, even with a quality of 80. If you want to change the quality, you can edit the script and change the value of the variable `quality`.

- For the videos, it's the same principle, it will convert them to MKV using AV1 with the settings:
  - **Bitrate**: 2M (Recommended by FFmpeg)
  - **CRF**: 35 (Recommended by FFmpeg)
  - **Audio codec**: Vorbis (Just because it's open-source)
  - **Audio bitrate**: 320k (320k is as good as CD quality, so it's more than enough for videos)

Those values are the values i found to be the best for me, but you can change them by editing the script if your needs are different.
