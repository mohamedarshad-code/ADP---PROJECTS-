================================================================================
            LUMINA DIGITAL ASSETS | BACKGROUND JOB SCHEDULING REFERENCE
================================================================================

1.  TASK        : To create and edit crontab entries
    Command     : crontab -e
    Syntax      : crontab -e
    Explanation : This command opens the crontab editor to add recurring background tasks.

2.  TASK        : To schedule a job using a set of 5 timing parameters
    Command     : crontab
    Syntax      : m h d m dw command
    Explanation : Format: minute (0-59), hour (0-23), day (1-31), month (1-12), 
                  day of week (0-6). Use '*' for every instance.

3.  TASK        : To list all active cron jobs for the current user
    Command     : crontab -l
    Syntax      : crontab -l
    Explanation : This command displays current user's scheduled background tasks.

4.  TASK        : To remove all cron jobs for the current user
    Command     : crontab -r
    Syntax      : crontab -r
    Explanation : This command deletes the entire crontab file for the active operator.

5.  TASK        : To schedule a one-time job for a specific future time (Batch)
    Command     : at
    Syntax      : echo "command" | at Time
    Explanation : This command queues a task for single execution at a precise 
                  future timestamp (e.g., at 11:00 PM).

6.  TASK        : To display current batch job queue
    Command     : atq
    Syntax      : atq
    Explanation : This command lists all pending one-time background tasks.

7.  TASK        : To remove a specific scheduled batch job
    Command     : atrm
    Syntax      : atrm job_id
    Explanation : This command deletes a pending job from the at queue by its ID.

8.  TASK        : To run a command when system load levels are low
    Command     : batch
    Syntax      : batch
    Explanation : This command allows logic to be executed only when the 
                  system load average drops below 0.8.

9.  TASK        : To audit running background jobs (current session)
    Command     : jobs
    Syntax      : jobs
    Explanation : Displays status of active background tasks in the local session.

10. TASK        : To bring a background job to the foreground
    Command     : fg
    Syntax      : fg %job_id
    Explanation : Moves a specified background task to the interactive terminal.

11. TASK        : To move a suspended process to the background
    Command     : bg
    Syntax      : bg %job_id
    Explanation : Continues the execution of a paused process in the background.

================================================================================
            END OF BACKGROUND SCHEDULING REFERENCE GUIDE
================================================================================
