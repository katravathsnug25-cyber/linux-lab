#!/bin/bash
set -euo pipefail
echo "=========================================="
echo "   08: LEGENDARY CEO COMMAND CENTER"
echo "=========================================="
echo "Host: $(hostname) | Kernel: $(uname -r)"
echo "CPU Cores: $(nproc) | Load: $(cut -d' ' -f1-3 /proc/loadavg)"
echo "Total Scripts in Lab: $(ls -1 /workspace/0*.sh | wc -l)"
echo "Status: PRODUCTION READY"
