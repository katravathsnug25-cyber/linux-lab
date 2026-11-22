#!/bin/bash
echo "=== 04: Shell Script Audit Using For Loop ==="
count=0

for script_file in *.sh; do
  if [ -f "$script_file" ]; then
    count=$((count + 1))
    perms=$(stat -c "%A" "$script_file")
    size=$(stat -c "%s" "$script_file")
    echo "$count) $script_file | Perms: $perms | Size: ${size}B"
  fi
done

echo "Total .sh scripts audited: $count"
