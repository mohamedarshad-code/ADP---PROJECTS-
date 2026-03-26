# --- EXP - 8 | 20 ESSENTIAL TERMINAL COMMANDS (Windows Edition) ---
# Functionally identical to the Linux Bash version, optimized for Windows CMD/PS.

$divider = "================================================================"

Write-Host "$divider" -ForegroundColor Cyan
Write-Host " 🛡️  LUMINA GLOBAL: WINDOWS TERMINAL MASTERY SUITE " -ForegroundColor Orange
Write-Host "$divider" -ForegroundColor Cyan

# 1. PWD (Location)
Write-Host "`n1. [pwd] - Where am I currently in the file system?" -ForegroundColor Yellow
Get-Location
Write-Host "$divider"

# 2. DATE (System Time)
Write-Host "`n2. [date] - Accessing global system time." -ForegroundColor Yellow
Get-Date
Write-Host "$divider"

# 3. WHOAMI (User Identity)
Write-Host "`n3. [whoami] - Active system operator identity." -ForegroundColor Yellow
& whoami
Write-Host "$divider"

# 4. UPTIME (Mocked as System Statistics)
Write-Host "`n4. [uptime] - How long has this node been active?" -ForegroundColor Yellow
(Get-CimInstance Win32_OperatingSystem).LastBootUpTime
Write-Host "$divider"

# 5. LS (Listing)
Write-Host "`n5. [ls] - Audit of current directory assets." -ForegroundColor Yellow
Get-ChildItem -Name
Write-Host "$divider"

# 6. MKDIR (Directory Initialization)
Write-Host "`n6. [mkdir sandbox] - Initializing new secure sub-directory." -ForegroundColor Yellow
New-Item -ItemType Directory -Path "./sandbox" -Force | Out-Null
Write-Host "✅ DIRECTORY CREATED."
Write-Host "$divider"

# 7. TOUCH (File Creation)
Write-Host "`n7. [touch assets.txt] - Initializing digital asset." -ForegroundColor Yellow
New-Item -ItemType File -Path "./sandbox/assets.txt" -Force | Out-Null
Write-Host "✅ ASSET DISPATCHED."
Write-Host "$divider"

# 8. ECHO (Transmit Text)
Write-Host "`n8. [echo] - Transmitting text to output." -ForegroundColor Yellow
Write-Output "LUMINA Terminal Handshake Confirmed."
Write-Host "$divider"

# 9. CAT (Write & Read)
Write-Host "`n9. [cat > report.txt] - Injecting data into a file node." -ForegroundColor Yellow
Set-Content -Path "./sandbox/report.txt" -Value "System: Operational. Source: Verified."
Get-Content -Path "./sandbox/report.txt"
Write-Host "$divider"

# 10. HEAD (First Lines)
Write-Host "`n10. [head] - Scanning initial metadata." -ForegroundColor Yellow
Get-Content "./sandbox/report.txt" | Select-Object -First 1
Write-Host "$divider"

# 11. TAIL (Last Lines)
Write-Host "`n11. [tail] - Final block validation." -ForegroundColor Yellow
Get-Content "./sandbox/report.txt" | Select-Object -Last 1
Write-Host "$divider"

# 12. WC (Measurement)
Write-Host "`n12. [wc] - Calculating asset word-count density." -ForegroundColor Yellow
(Get-Content "./sandbox/report.txt" | Measure-Object -Word).Words
Write-Host "$divider"

# 13. GREP (Search)
Write-Host "`n13. [grep 'Operational'] - Specialized pattern discovery." -ForegroundColor Yellow
Select-String -Pattern "Operational" -Path "./sandbox/report.txt"
Write-Host "$divider"

# 14. CP (Duplicate)
Write-Host "`n14. [cp] - Duplicating digital assets." -ForegroundColor Yellow
Copy-Item "./sandbox/report.txt" "./sandbox/backup.txt"
Write-Host "✅ ASSET CLONED."
Write-Host "$divider"

# 15. MV (Rename)
Write-Host "`n15. [mv] - Migrating/Renaming file node." -ForegroundColor Yellow
Rename-Item "./sandbox/backup.txt" "archive.txt"
Write-Host "✅ ASSET RENAMED."
Write-Host "$divider"

# 16. DF (Disk Space)
Write-Host "`n16. [df] - Storage architecture audit." -ForegroundColor Yellow
Get-PSDrive C | Select-Object Free, Used
Write-Host "$divider"

# 17. FREE (RAM Status)
Write-Host "`n17. [free] - RAM resource diagnostic audit." -ForegroundColor Yellow
Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory
Write-Host "$divider"

# 18. HISTORY (Logs)
Write-Host "`n18. [history] - Audit of recent system operations." -ForegroundColor Yellow
Get-History | Select-Object -Last 5
Write-Host "$divider"

# 19. REVEAL (Metadata Scan)
Write-Host "`n19. [ls -ld] - Deep directory metadata scan." -ForegroundColor Yellow
Get-Item "./sandbox" | Select-Object Mode, LastWriteTime, Name
Write-Host "$divider"

# 20. RM (Maintenance Purge)
Write-Host "`n20. [rm -rf] - Purging test assets (Cleanup)." -ForegroundColor Yellow
Remove-Item "./sandbox" -Recurse -Force
Write-Host "🛡️  CLEANUP PROTOCOL COMPLETE."
Write-Host "$divider"

Write-Host "🏁 DISPATCH COMPLETE. TERMINAL MASTERY AUDIT SUCCESSFUL." -ForegroundColor Green
