#!/bin/bash

# --- EXP - 8 | PREMIUM FILE MANAGEMENT AUTOMATION SCRIPTS ---
# This script automates file operations, log rotations, and backups.

# 1. Environment Configuration
SOURCE_DIR="./data_assets"
BACKUP_DIR="./system_backups"
LOG_FILE="./management_audit.log"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# 2. Logic: Create directories if they are missing
if [[ ! -d "$SOURCE_DIR" ]]; then
    mkdir -p "$SOURCE_DIR"
    echo "[$TIMESTAMP] CREATED: Source directory initialized." >> "$LOG_FILE"
fi

if [[ ! -d "$BACKUP_DIR" ]]; then
    mkdir -p "$BACKUP_DIR"
    echo "[$TIMESTAMP] CREATED: Backup repository initialized." >> "$LOG_FILE"
fi

# 3. Logic: Automate file compression & move (Backup Operation)
backup_system_assets() {
    echo "--- INITIATING SYSTEM BACKUP PROTOCOL ---"
    
    # Compress all files from source
    tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR/"
    
    # Logic: Verify success
    if [[ $? -eq 0 ]]; then
        echo "[$TIMESTAMP] SUCCESS: System assets archived and dispatched." >> "$LOG_FILE"
        echo "✅ BACKUP DISPATCHED: backup_$TIMESTAMP.tar.gz"
    else
        echo "[$TIMESTAMP] FAULT: Archiving procedure failed." >> "$LOG_FILE"
        echo "❌ CRITICAL FAULT: Backup failed."
    fi
}

# 4. Logic: Clean up old logs (File Management)
rotate_logs() {
    echo "--- ROTATING SYSTEM LOGS ---"
    
    # Logic: Delete logs older than 30 days
    find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +30 -exec rm {} \;
    
    echo "[$TIMESTAMP] MAINTENANCE: Old system archives purged." >> "$LOG_FILE"
}

# 5. EXECUTE AUTOMATED TASKS
backup_system_assets
rotate_logs

# 6. Audit Script Status
echo "--- TASK COMPLETED. LOG UPDATED AT $LOG_FILE ---"
