#!/usr/bin/perl

use strict;
use warnings;
use File::Copy;
use File::Path qw(make_path);
use File::Basename;
use File::Spec;

# Variables for input and output directories
my $input_directory = ".";
my $output_directory = "./output"; # Set a default output directory

# ImageMagick parameters
my $image_quality = 80;  # Image quality (0-100)
my $image_format = "avif";  # Image format (e.g., "avif")

# FFmpeg parameters
my $video_codec = "libsvtav1";  # Video codec
my $video_bitrate = "2M";  # Video bitrate
my $video_crf = 35;  # Video Constant Rate Factor (CRF)
my $audio_codec = "libvorbis";
my $audio_bitrate = "320k";
my $video_format = "mkv";

# Color codes for output
my $reset_color = "\e[0m";
my $green_color = "\e[32m";
my $red_color = "\e[31m";
my $yellow_color = "\e[33m";  # Yellow color code

# Initialize the $convert_command variable
my $convert_command = "";

# Function to set the ImageMagick command based on OS
sub set_imagemagick_command {
    my $convert_path = `which convert`;  # Check if 'convert' is available
    my $magick_path = `which magick`;  # Check if 'magick' is available

    chomp($convert_path); # Remove newline character
    chomp($magick_path);  # Remove newline character

    if ($convert_path && -x $convert_path) {
        $convert_command = "convert";
    } elsif ($magick_path && -x $magick_path) {
        $convert_command = "magick";
    } else {
        die "${red_color}Error$reset_color: ImageMagick (convert or magick) not found on your system.\n";
    }
}

# Call the function to set the ImageMagick command
set_imagemagick_command();


# Function to display a progress bar
sub progress_bar {
    my ($total, $current, $label) = @_;
    my $width = 20;
    my $percentage = 0;

    if ($total != 0) {
        $percentage = ($current * 100 / $total);
    }

    my $completed = int($percentage * $width / 100);
    my $remaining = $width - $completed;
    my $bar = "[" . "X" x $completed . " " x $remaining . "]";
    printf "%s (%02d%%) : %s Remaining: %d/%d\r", $label, $percentage, $bar, $current, $total;
}

# Function to convert bytes to human-readable size with two decimal places
sub human_readable_size {
    my ($bytes) = @_;
    my @units = ("KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB");
    my $unit = "B";
    my $i = 0;

    while ($bytes >= 1024 && $i < scalar(@units) - 1) {
        $bytes /= 1024;
        $i++;
    }

    if ($i > 0) {
        $unit = $units[$i];
    }

    return sprintf("%.2f %s", $bytes, $unit);
}

# Function to calculate percentage difference
sub calculate_percentage_difference {
    my ($old_size, $new_size) = @_;
    my $percentage_difference = 0;

    if ($old_size != 0) {
        $percentage_difference = ($new_size - $old_size) / $old_size * 100;
    }

    return $percentage_difference;
}

# Function to replicate the input directory structure in the output directory
sub replicate_directory_structure {
    my ($input_path, $input_directory, $output_directory) = @_;
    my $relative_path = File::Spec->abs2rel($input_path, $input_directory);
    return File::Spec->catfile($output_directory, $relative_path);
}

# Get the user inputs -i and -o
foreach my $arg (@ARGV) {
    if ($arg =~ /-i/) {
        $input_directory = $ARGV[1];
    } elsif ($arg =~ /-o/) {
        $output_directory = $ARGV[1];
    }
}

# -o is not required, so if it's not set, set it to ./output
# -i is required, so if it's not set or the directory doesn't exist, exit with an error
unless (defined $input_directory && -d $input_directory) {
    die "${red_color}Error$reset_color: Input directory is required and must exist\n";
}

# Create a subdirectory in the output directory with the same name as the input directory
my $output_subdirectory = File::Spec->catfile($output_directory, basename($input_directory));
unless (-d $output_subdirectory) {
    make_path($output_subdirectory) or die "${red_color}Error$reset_color: Failed to create output subdirectory: $!\n";
}

# Calculate the size of the input directory in bytes before conversion
my $input_size_bytes_before = `du -sB1 "$input_directory" | awk '{print \$1}'`;
my $input_size_hr_before = human_readable_size($input_size_bytes_before);
print "${yellow_color}Information$reset_color: Input directory size before conversion: $input_size_hr_before\n";

# Find all files in the input directory
my @files = `find "$input_directory" -type f`;
my $total_files = scalar @files;
my $current_file = 0;

# Loop through the files
foreach my $file (@files) {
    chomp($file);
    my $mime_type = `file -b --mime-type "$file"`;
    $current_file++;

    my $label = "Convert...";
    progress_bar($total_files, $current_file, $label);

    my $output_path = replicate_directory_structure($file, $input_directory, $output_subdirectory);

    if ($mime_type =~ /^image\//) {
        $output_path =~ s/\.\w+$/.avif/;  # Replace the extension with "avif" for images
    } elsif ($mime_type =~ /^video\//) {
        $output_path =~ s/\.\w+$/.mkv/;  # Replace the extension with "mkv" for videos
    }

    my $output_dir = dirname($output_path);
    make_path($output_dir); # Create the directory structure if it doesn't exist

    # Add your conversion logic here using ImageMagick for images and FFmpeg for videos
    my $convert_command;

    if ($mime_type =~ /^image\//) {
        $convert_command = "convert \"$file\" -quality $image_quality% \"$output_path\" 2>/dev/null";
    } elsif ($mime_type =~ /^video\//) {
        $convert_command = "ffmpeg -i \"$file\" -c:v $video_codec -b:v $video_bitrate -crf $video_crf -c:a $audio_codec -b:a $audio_bitrate \"$output_path\" 2>/dev/null";
    }

    my $result = system($convert_command);

    if ($result != 0) {
        print "${red_color}Error$reset_color: Failed to convert file: $file to $output_path\n";
    }
}


# Debug: Print the number of image and video files
my $image_files = scalar(grep /$image_format$/i, @files);
my $video_files = scalar(grep /\.(mp4|avi|mov)$/i, @files);

print "${yellow_color}Information$reset_color: Image and Video files converted: $image_files/$video_files\n";

# Calculate the size of the output directory in bytes
my $output_size_bytes = `du -sB1 "$output_subdirectory" | awk '{print \$1}'`;
my $output_size_hr = human_readable_size($output_size_bytes);

# Calculate the size gain as a percentage if the output directory size is smaller
my $size_difference_percentage = calculate_percentage_difference($input_size_bytes_before, $output_size_bytes);

if ($size_difference_percentage < 0) {
    print "${green_color}Success$reset_color: Output directory size is $output_size_hr, smaller than the input directory size.\n";
    printf "${green_color}Success$reset_color: Size reduction: %.2f%%.\n", -$size_difference_percentage;
} elsif ($size_difference_percentage > 0) {
    print "${red_color}Error$reset_color: Output directory size is larger than the input directory.\n";
    printf "${red_color}Error$reset_color: Size increase: %.2f%% (Output size is %.2f%% larger than input size).\n", $size_difference_percentage, $size_difference_percentage;
} else {
    print "${yellow_color}Information$reset_color: Output directory size matches the input directory size.\n";
    print "${yellow_color}Information$reset_color: No size change.\n";
}
