#!/bin/bash
echo "=== Linux Dev Workspace Check ==="
echo "User: $(whoami) | Host: $(hostname)"
echo "Current Dir: $(pwd)"
echo "Date & Time: $(date)"
echo "--- Disk Usage ---"
df -h /workspace
echo "--- Memory ---"
free -h
