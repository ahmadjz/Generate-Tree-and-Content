#!/bin/bash

output_file="directory_contents.txt"
script_name=$(basename "$0")
ignore_dirs="__pycache__|venv|.git"

# Clear output file if it already exists
> "$output_file"

# Print the directory tree to the output file, excluding ignored directories
echo "Directory Tree:" >> "$output_file"
tree -I "$ignore_dirs" >> "$output_file"
echo "" >> "$output_file"

# Append each file's name and content to the output file, excluding ignored directories, the output file itself, and the script file
find . -type f ! -path "./$output_file" ! -path "./$script_name" ! -path "*/__pycache__/*" ! -path "*/venv/*" ! -path "*/.git/*" -print | while read -r file; do
    echo "File: $file" >> "$output_file"
    echo "----------------" >> "$output_file"
    cat "$file" >> "$output_file"
    echo "" >> "$output_file"
done

echo "Completed writing to $output_file."
