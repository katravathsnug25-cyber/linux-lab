#!/bin/bash
echo "=== 07: Mystery Log & Port Forensics ==="
echo "Active User: $(whoami) | Uptime: $(uptime -p)"
echo "--- Top 5 Largest Files in /workspace ---"
find /workspace -maxdepth 2 -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 5
echo "--- Open Listening Sockets ---"
ss -tuln 2>/dev/null || netstat -tuln 2>/dev/null || echo "Socket tool not installed"
