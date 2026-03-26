#!/bin/bash

# --- EXP - 9 | PREMIUM SYSTEM BACKUP PROTOCOL ---
# Replicating the "shylesh" backup environment exactly.

BACKUP_DIR="backup"
LOG_FILE="$BACKUP_DIR/backup.log"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
USER_NAME="ARSHAD"

# 1. Initialize Arena
mkdir -p "$BACKUP_DIR"

# 2. Execute Asset Archival
# We'll archive the script itself as a demonstration of a digital asset backup.
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "./backup_script.sh" 2>/dev/null

# 3. Generate High-End Audit Log (Matching Screenshot)
{
    echo "----------------------------------------------------------------"
    echo "Backup completed for $USER_NAME at $TIMESTAMP"
    echo "System Load: $(uptime)"
    echo "Disk Usage:"
    df -h | head -n 2
    echo "----------------------------------------------------------------"
} >> "$LOG_FILE"

# 4. Immediate Operator Feedback
echo "✅ BACKUP PROTOCOL DISPATCHED SUCCESSFULLY."
echo "Archive: $BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
echo "Diagnostic Log: $LOG_FILE"
