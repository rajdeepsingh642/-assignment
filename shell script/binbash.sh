#!/bin/bash

# Define base directory and project structure
base_dir="projects"
projects=("facebook" "google/oriserve" "meta/oriserve" "oracle")

# Create the directories
for project in "${projects[@]}"; do
  mkdir -p "$base_dir/$project"
done

# Find all 'oriserve' directories and create test.txt inside them
find "$base_dir" -type d -name "oriserve" | while read oriserve_dir; do
  echo "oriserve" > "$oriserve_dir/test.txt"
done

# Verify creation
echo "Directory structure:"
tree "$base_dir"

