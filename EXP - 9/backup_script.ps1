# --- EXP - 9 | PREMIUM SYSTEM BACKUP PROTOCOL (Windows Edition) ---
# Replicating the "ARSHAD" backup environment natively in CMD/PS.

$BackupDir = "./backup"
$LogFile = "$BackupDir/backup.log"
$Timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$UserName = "ARSHAD"

# 1. Initialize Arena
if (-not (Test-Path $BackupDir)) {
    New-Item -ItemType Directory -Path $BackupDir | Out-Null
}

# 2. Execute Asset Archival (Windows TAR)
$ArchiveName = "$BackupDir/backup_$Timestamp.tar.gz"
tar -czf $ArchiveName "./backup_script.ps1"

# 3. Generate High-End Audit Log (Matching Screenshot)
$Uptime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$Disk = Get-PSDrive C | Select-Object Free, Used

$LogEntry = @"
----------------------------------------------------------------
Backup completed for $UserName at $Timestamp
System Load: Booted on $Uptime
Disk Usage:
Drive: C | Free: $([Math]::Round($Disk.Free/1GB, 2)) GB | Used: $([Math]::Round($Disk.Used/1GB, 2)) GB
----------------------------------------------------------------
"@

$LogEntry | Out-File -FilePath $LogFile -Append

# 4. Operator Feedback
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host " ✅ ARSHAD'S BACKUP DISPATCHED SUCCESSFULLY. " -ForegroundColor Yellow
Write-Host " Archive: $ArchiveName" -ForegroundColor Yellow
Write-Host " Audit Log: $LogFile" -ForegroundColor Cyan
Write-Host "================================================================" -ForegroundColor Cyan
