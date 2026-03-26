# --- EXP - 10 | PREMIUM GIT VERSION CONTROL AUTOMATION ---
# Demonstrating the core Git lifecycle: Init, Commit, Branch, and Merge.

$divider = "================================================================"

Write-Host "$divider" -ForegroundColor Cyan
Write-Host " 🛠️  LUMINA GLOBAL: GIT VERSION CONTROL MASTERY " -ForegroundColor Yellow
Write-Host "$divider" -ForegroundColor Cyan

# 1. Initialization
Write-Host "`n1. [git init] - Initializing high-end digital asset repository..." -ForegroundColor Yellow
if (Test-Path .git) { Remove-Item .git -Recurse -Force }
git init
Write-Host "✅ GIT REPOSITORY INITIALIZED."
Write-Host "$divider"

# 2. Staging & Committing (Main Branch)
Write-Host "`n2. [git add & commit] - Auditing and committing initial architecture..." -ForegroundColor Yellow
"LUMINA_VERSION_1.0" | Out-File -FilePath version.txt
git add version.txt
git commit -m "Initialize secure asset architecture"
Write-Host "✅ INITIAL COMMIT DISPATCHED."
Write-Host "$divider"

# 3. Branching (Feature Development)
Write-Host "`n3. [git branch] - Branching for experimental feature development..." -ForegroundColor Yellow
git checkout -b feature/advanced-analytics
"LUMINA_ANALYTICS_PROTOCOL" | Out-File -FilePath analytics.txt
git add analytics.txt
git commit -m "Add advanced analytics node"
Write-Host "✅ FEATURE BRANCH COMMITTED."
Write-Host "$divider"

# 4. Merging (Integration)
Write-Host "`n4. [git merge] - Merging feature assets back to main repository..." -ForegroundColor Yellow
git checkout master # or main depending on git version
git merge feature/advanced-analytics
Write-Host "✅ REPOSITORY MERGE SUCCESSFUL."
Write-Host "$divider"

# 5. Status Audit
Write-Host "`n5. [git log] - Final Version Control Audit Trail:" -ForegroundColor Yellow
git log --oneline --graph --all
Write-Host "$divider"

Write-Host "🏁 GIT WORKFLOW COMPLETED. ARCHITECTURE IS SECURE." -ForegroundColor Green
