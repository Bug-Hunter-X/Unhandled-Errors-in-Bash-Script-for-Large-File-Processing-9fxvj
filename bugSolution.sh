#!/bin/bash

file_to_process="/path/to/very/large/file.txt"

# Check if the file exists and is readable
if [ ! -f "$file_to_process" ] || [ ! -r "$file_to_process" ]; then
  echo "Error: File not found or insufficient permissions."
exit 1
fi

# Handle SIGINT (Ctrl+C) gracefully
trap "echo '\nProcessing interrupted.'; exit 1" INT

# Process the file in smaller chunks (e.g., 1000 lines at a time)
chunk_size=1000
while IFS= read -r -d '' -n "$((chunk_size * 2))" chunk; do
  # Process each line in the chunk
  while IFS=$'\n' read -r line; do
    echo "Processing line: $line"
    # Simulate intensive processing
    sleep 0.1
    # Check if the process was interrupted
if [[ -z $line ]]; then
      exit 1
    fi
  done <<< "$chunk"
done < <(find . -maxdepth 1 -name "$file_to_process" -print0)

# Optionally display a success message
echo "File processing complete."