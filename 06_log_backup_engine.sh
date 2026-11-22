#!/bin/bash
SOURCE_DIR="/workspace/lab_practice"
BACKUP_DIR="/workspace/backups"

mkdir -p "$SOURCE_DIR" "$BACKUP_DIR"

write_log() {
  local message="$1"
  local ts
  ts=$(date "+%Y-%m-%d %H:%M:%S")
  echo "[$ts] $message" | tee -a "$SOURCE_DIR/engine.log"
}

run_backup() {
  local stamp archive_path
  stamp=$(date "+%Y%m%d_%H%M%S")
  archive_path="$BACKUP_DIR/lab_backup_${stamp}.tar.gz"

  write_log "Starting backup from $SOURCE_DIR"
  if tar -czf "$archive_path" -C /workspace lab_practice; then
    write_log "Backup created successfully: $archive_path"
  else
    write_log "ERROR: Backup failed for $SOURCE_DIR"
    return 1
  fi
}

echo "=== 06: Master Log & Backup Engine ==="
run_backup
echo "--- Backup Folder Contents ---"
ls -lh "$BACKUP_DIR"
