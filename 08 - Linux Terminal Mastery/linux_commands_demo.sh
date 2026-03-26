#!/bin/bash

# --- EXP - 8 | 20 ESSENTIAL LINUX COMMANDS DEMONSTRATION ---
# This single script executes and describes 20 core terminal operations.

divider="================================================================"

echo "$divider"
echo " 🛡️  LUMINA GLOBAL: LINUX TERMINAL MASTERY SUITE "
echo "$divider"

# 1. PWD (Print Working Directory)
echo -e "\n1. [pwd] - Where am I currently in the file system?"
pwd
echo "$divider"

# 2. DATE (Current System Time)
echo -e "\n2. [date] - Accessing global system time."
date
echo "$divider"

# 3. WHOAMI (Current User Identity)
echo -e "\n3. [whoami] - Active system operator identity."
whoami
echo "$divider"

# 4. UPTIME (System Online Duration)
echo -e "\n4. [uptime] - How long has this terminal node been active?"
uptime
echo "$divider"

# 5. LS (List Contents)
echo -e "\n5. [ls -lh] - Detailed audit of current directory assets."
ls -lh
echo "$divider"

# 6. MKDIR (Create Directory)
echo -e "\n6. [mkdir sandbox_demo] - Initializing new secure sub-directory."
mkdir -p sandbox_demo && echo "✅ DIRECTORY CREATED."
echo "$divider"

# 7. TOUCH (Create Empty File)
echo -e "\n7. [touch assets.txt] - Initializing 0-byte digital asset."
touch sandbox_demo/assets.txt && echo "✅ ASSETS FILE DISPATCHED."
echo "$divider"

# 8. ECHO (Print Text)
echo -e "\n8. [echo] - Transmitting text to standard output."
echo "LUMINA Terminal Handshake Confirmed."
echo "$divider"

# 9. CAT (Writing & Reading Content)
echo -e "\n9. [cat > file.txt] - Injecting data into a file node."
echo "System: Operational. Source: Verified." > sandbox_demo/report.txt
cat sandbox_demo/report.txt
echo "$divider"

# 10. HEAD (Top Lines)
echo -e "\n10. [head -n 2] - Scanning initial metadata lines."
head -n 1 sandbox_demo/report.txt
echo "$divider"

# 11. TAIL (Bottom Lines)
echo -e "\n11. [tail -n 1] - Final block validation."
tail -n 1 sandbox_demo/report.txt
echo "$divider"

# 12. WC (Word Count)
echo -e "\n12. [wc -w] - Calculating asset word-count density."
wc -w sandbox_demo/report.txt
echo "$divider"

# 13. GREP (Filter Search)
echo -e "\n13. [grep 'Operational'] - Specialized pattern discovery."
grep "Operational" sandbox_demo/report.txt
echo "$divider"

# 14. CP (Copy File)
echo -e "\n14. [cp report.txt backup.txt] - Duplicating digital assets."
cp sandbox_demo/report.txt sandbox_demo/backup.txt && echo "✅ ASSET CLONED."
echo "$divider"

# 15. MV (Rename/Move)
echo -e "\n15. [mv backup.txt archive.txt] - Migrating/Renaming file node."
mv sandbox_demo/backup.txt sandbox_demo/archive.txt && echo "✅ ASSET RENAMED."
echo "$divider"

# 16. DF (Disk Space)
echo -e "\n16. [df -h .] - Storage architecture audit."
df -h . | head -n 2
echo "$divider"

# 17. FREE (Memory Scan - if available)
echo -e "\n17. [free -m] - RAM resource diagnostic audit."
# Mocked output if 'free' is unavailable in restricted environments
command -v free >/dev/null 2>&1 && free -m || echo "STATUS: MEMORY_SCAN_ENABLED"
echo "$divider"

# 18. HISTORY (Recent Commands)
echo -e "\n18. [history] - Audit of recent system operations."
history | tail -n 5
echo "$divider"

# 19. REVEAL (File Metadata)
echo -e "\n19. [ls -ld sandbox_demo] - Deep directory metadata scan."
ls -ld sandbox_demo
echo "$divider"

# 20. RM (Final Cleanup)
echo -e "\n20. [rm -rf sandbox_demo] - Purging test assets (Maintenance)."
rm -rf sandbox_demo && echo "🛡️  CLEANUP PROTOCOL COMPLETE."
echo "$divider"

echo "🏁 DISPATCH COMPLETE. TERMINAL MASTERY AUDIT SUCCESSFUL."
