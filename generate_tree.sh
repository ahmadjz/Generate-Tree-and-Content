#!/bin/bash

output_file="directory_contents.txt"

# Clear output file if it already exists
> "$output_file"

# Print the directory tree to the output file
echo "Directory Tree:" >> "$output_file"
tree >> "$output_file"
echo "" >> "$output_file"

# Append each file's name and content to the output file
for file in $(find . -type f -print); do
    if [ "$file" != "./$output_file" ]; then
        echo "File: $file" >> "$output_file"
        echo "----------------" >> "$output_file"
        cat "$file" >> "$output_file"
        echo "" >> "$output_file"
    fi
done

echo "Completed writing to $output_file."
