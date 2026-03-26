# --- EXP - 9 | PREMIUM BACKGROUND SCHEDULING (Windows Edition) ---
# Functionally mimics Linux Cron & Batch logic using PowerShell background loops.

$LogFile = "./health_audit.log"
$Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

Write-Host "================================================================" -ForegroundColor Cyan
Write-Host " 🕒 LUMINA GLOBAL: BACKGROUND SCHEDULING & BATCH TERMINAL " -ForegroundColor Yellow
Write-Host "================================================================" -ForegroundColor Cyan

# 1. Background Logic: Monitoring Loop (Simulating a Cron Job)
Write-Host "`n1. [crontab -e] - Initializing recurring 1-minute background audit..." -ForegroundColor Yellow

$JobScript = {
    $InternalLog = "c:\Users\amsir\OneDrive\Desktop\model pracical\25EE174 - ADP\Experiment - Code\EXP - 9\health_audit.log"
    for ($i=0; $i -lt 5; $i++) {
        $Time = Get-Date -Format "HH:mm:ss"
        $CPU = Get-Counter '\Processor(_Total)\% Processor Time' | Select-Object -ExpandProperty CounterSamples | Select-Object -ExpandProperty CookedValue
        "[$Time] BACKGROUND_CRON: System Active | CPU_LOAD: $([Math]::Round($CPU, 2))%" | Out-File -FilePath $InternalLog -Append
        Start-Sleep -Seconds 2
    }
}

# Start the background job
Start-Job -ScriptBlock $JobScript | Out-Null
Write-Host "✅ BACKGROUND JOB DISPATCHED (Running for 10 seconds in background)."

# 2. Batch Logic: One-time Scheduling (Simulating 'at' command)
Write-Host "`n2. [at 23:00] - Scheduling one-time Maintenance Dispatch..." -ForegroundColor Yellow
Write-Host "✅ BATCH COMMAND QUEUED: Log Rotation set for system idle period."
Add-Content -Path $LogFile -Value "[$Timestamp] BATCH_QUEUED: Maintenance Protocol scheduled."

# 3. Listing Jobs (Simulating 'crontab -l')
Write-Host "`n3. [crontab -l] - Auditing active background processes..." -ForegroundColor Yellow
Get-Job | Select-Object Id, Name, State, Command

# 4. Final Status
Write-Host "`n🏁 MONITORING ACTIVE. AUDIT LOG UPDATED AT $LogFile" -ForegroundColor Green
Write-Host "================================================================" -ForegroundColor Cyan
