#!/bin/bash

# Loop through all files with a specific extension in the current directory
for file in *.png; do
  # Get the filename without extension
  filename=$(basename -- "$file")
  filename="${filename%.*}"

  # Convert the image and save it to the output directory with the same filename
  convert "$file" -quality 50 "${filename}.webp"
done

