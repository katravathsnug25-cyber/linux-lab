#!/bin/bash
TARGET_DIR="/workspace/lab_practice"
TARGET_FILE="$TARGET_DIR/notes.txt"

echo "=== 03: Logical File & Directory Check ==="

if [ -d "$TARGET_DIR" ]; then
  echo "Directory already exists: $TARGET_DIR"
else
  echo "Directory not found. Creating: $TARGET_DIR"
  mkdir -p "$TARGET_DIR"
fi

if [ -f "$TARGET_FILE" ]; then
  echo "File already exists: $TARGET_FILE"
else
  echo "Creating initial file: $TARGET_FILE"
  echo "Logical scripting practice started in /workspace" > "$TARGET_FILE"
fi

echo "--- Current Directory Contents ---"
ls -la "$TARGET_DIR"
