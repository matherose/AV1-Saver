# AV1 Saver
_"You clicked, we shrank. Your solution to swollen media files!"_

Hey folks! You ever look at the space your media files take up and think, "Gee, I wish I had room for more cat videos?" Well, fur-tunately, we have just the right toolbox for you! So buckle up, grab a snack, and let's dive right into the magic that AV1 Saver has up its sleeves. But don't fret, we promise to explain it as if you're five (or maybe a particularly smart cat)!

## What's AV1 Saver?

Think of AV1 Saver as a magical shrink ray. You blast it at your oversized media files and _voila!_ they become smaller - much smaller - but without losing any detail or quality. So it's magic but without any tricky side-effects.

> [!NOTE]
>Just like the spell, 'reducio,' in Harry Potter, but for your files. No wand needed!

## How Does it Work?

We take your big, scary media files and use a clever codec called **AV1** to squash them down into friendly, smaller sizes. It's like taking a big, fluffy marshmallow and squashing it down into a cute little cube that still tastes just as sweet. That's exactly what AV1 Saver does - but with videos and images, not marshmallows.

## Requirements and Expectations

### Tools Needed

In order for the magic to happen, you need two tools:
1. **ffmpeg**: This is what compresses your videos and makes them smaller.
2. **avifenc**: And this guy does the same thing, but for pictures.
3. **exiftool (optional)**: If you have this, we can also move all the important info from your old picture to your new, smaller one.

They're all free to download and use, so get them installed and running before using AV1 Saver. 

### Speed and Size

AV1 Saver is pretty efficient, but the actual speed will really depend on your computer. The good news is that you'll definitely end up with smaller video and photo files, no matter how long it takes. 

> [!WARNING]
>Remember, great things come to those who wait. So be patient!
>I'm thinking about adding hwaccel when i get my ARC GPU, if i want to compress all my OnlyFans videos, i would like to do it in a reasonable time.

## Usage

It's as simple as ABC! Here's how:
1. Download AV1 Saver (it's free!).
2. Open up your favorite terminal (Command Prompt, Terminal, etc.).
3. Run the script using the command: `-i 'path/to/your/media/files'`.  
    
    For a custom output folder, use the `-o` argument like so: `-i 'path/to/your/media/files' -o 'path/to/save/your/smaller/files'`.  
    
    See, told you it was easy!

## For the Technical Wizards

If you are well-versed in the mysteries of bash scripting and video compression, you might want to know more about nitty-gritty of the AV1 Saver's working. So let's pull back the curtain and dive deep down the rabbit hole.

AV1 Saver is a bash script that leverages the encoding capabilities of **ffmpeg** with AV1 by AOMedia. As we all know, AV1 is an open and royalty-free video coding format, which is designed for the transmission of video over the internet. And, AV1 achieves a high data compression ratio, producing videos of a smaller size without compromising on the quality.

The script also uses Energy-Efficient Multicore-Aware Parallel AV1 Encoder (`av1an`) for images. It's a multiplatform AVIF converter that helps with parallelizing and speeding up AVIF conversion. 

Here is an overview of the bash script:

1. **Input validation** - The script checks if both Linux or macOS and the required commands (ffmpeg and avifenc) are available.

2. **Directory size calculation** - Calculated using `du` command.

3. **File conversion** - Media files are iteratively converted to either MKV or AVIF format using ffmpeg or avifenc respectively.

4. **Progress Update** - An interactive progress update is shown to visualize the conversion progress.

5. **Output calculation** - Finally, the script summarizes the conversion by showing the total file size saved (input size - output size)

Here are the technical details of the compression settings in the script:
- Video: Video is compressed to `libsvtav1` codec, with a video bitrate of `2M`, crf is set to `35`, preset is set to `8`, which enabled slower encoding but better compression ratio.
- Image: Images are converted using AVIF compression with a quality of `80`.

It's also worth noting that the EXIF metadata from the original images is preserved during the conversion using `exiftool`.

As an expert, you might be interested in tweaking these numbers to suit your specific use-cases! The script is quite flexible that way. 

Happy tinkering!

## Ready to Get Started?

That's really all there is to it. So why wait? Give AV1 Saver a try and start making more room for more cat videos right now!