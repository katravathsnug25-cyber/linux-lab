#!/bin/bash
DISK_THRESHOLD=80
MIN_FREE_RAM_MB=512

echo "=== 05: CEO / Ops System Health Guard ==="

disk_used=$(df -P /workspace | awk 'NR==2 {gsub("%",""); print $5}')
free_ram_mb=$(free -m | awk '/^Mem:/ {print $7}')

echo "Disk Used: ${disk_used}% (Threshold: ${DISK_THRESHOLD}%)"
echo "Available RAM: ${free_ram_mb} MB (Minimum Required: ${MIN_FREE_RAM_MB} MB)"

if [ "$disk_used" -ge "$DISK_THRESHOLD" ]; then
  echo "ALERT: Disk usage critical (${disk_used}%)!"
  exit 1
elif [ "$free_ram_mb" -le "$MIN_FREE_RAM_MB" ]; then
  echo "ALERT: Available RAM low (${free_ram_mb} MB)!"
  exit 1
else
  echo "STATUS: ALL SYSTEMS HEALTHY"
  exit 0
fi
