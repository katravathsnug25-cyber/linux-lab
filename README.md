# Linux Shell Scripting Lab (linux-lab)

CEO-level structured Linux automation & shell scripting progression built inside an Ubuntu Docker workspace.

## Ordered Scripts Architecture (01 to 08)

| Order | Level | Script | Core Capability |
| :--- | :--- | :--- | :--- |
| 01 | Basic | 01_hello_linux.sh | Shebang, echo, kernel check (uname -a) |
| 02 | Basic | 02_sys_info.sh | Variables, command substitution, disk & memory diagnostics |
| 03 | Logical | 03_file_ops_logic.sh | Conditional logic (if/else), directory & file guards |
| 04 | Logical | 04_loops_audit.sh | for loops, counters, permissions & byte size audit |
| 05 | CEO / Ops | 05_health_guard.sh | Threshold alerts, awk parsing, automation exit codes (0/1) |
| 06 | Master | 06_log_backup_engine.sh | Modular functions, timestamped logging (tee), tar.gz archives |
| 07 | Mystery | 07_mystery_forensics.sh | Deep file size forensics & listening socket scan |
| 08 | Legendary | 08_legendary_command_center.sh | Strict mode (set -euo pipefail), CPU/load telemetry & lab summary |

## Run Any Script
chmod +x *.sh && ./08_legendary_command_center.sh
