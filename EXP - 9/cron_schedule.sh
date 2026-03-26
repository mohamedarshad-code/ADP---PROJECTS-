#!/bin/bash

# --- EXP - 9 | PREMIUM CRON JOB & BATCH SCHEDULING ---
# This script demonstrates how to configure cron jobs and batch tasks for background automation.

# 1. Background Logic: Monitoring Script to be scheduled
MONITOR_SCRIPT="./system_diagnostics.sh"

cat <<EOF > "$MONITOR_SCRIPT"
#!/bin/bash
# --- BACKGROUND DIAGNOSTICS LOG ---
# This is a background task that logs system health every minute.
TIMESTAMP=\$(date +"%Y-%m-%d %H:%M:%S")
echo "[\$TIMESTAMP] SYSTEM_HEALTH: ACTIVE | CPU_LOAD: \$(uptime | awk -F'load average:' '{ print \$2 }')" >> ./health_audit.log
EOF

chmod +x "$MONITOR_SCRIPT"

# 2. Logic: Automated Cron Injection
echo "--- INJECTING BACKGROUND CRON JOBS ---"

# This command adds a cron job that runs the monitor script every minute.
# Format: [minute] [hour] [day_of_month] [month] [day_of_week] [command]
(crontab -l 2>/dev/null; echo "* * * * * $MONITOR_SCRIPT") | crontab -

# Another example: A backup task that runs every day at midnight.
(crontab -l 2>/dev/null; echo "0 0 * * * /usr/local/bin/backup_assets.sh") | crontab -

# 3. Logic: Batch Command Execution
# Using 'at' for one-time background execution.
echo "--- SCHEDULING ONE-TIME BATCH LOG ROTATION ---"

# Scheduling a log rotation task for 11pm tonight.
echo "./rotate_logs.sh" | at 23:00

# 4. Status Check
echo "--- BACKGROUND JOBS SCHEDULED ---"
echo "Current Cron Jobs:"
crontab -l
echo "--- SYSTEM STANDBY FOR BACKGROUND DISPATCH ---"
