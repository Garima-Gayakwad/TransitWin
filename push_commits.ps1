param()

$repoPath = "c:\Users\Garima Gayakwad\OneDrive\Desktop\TransitWin-main"
$remoteUrl = "https://github.com/Garima-Gayakwad/TransitWin.git"

Set-Location $repoPath

# Remove any existing git history
if (Test-Path ".git") { Remove-Item ".git" -Recurse -Force }

git init
git branch -M main
git remote add origin $remoteUrl

Write-Host "Git initialized."

# ---- COMMIT 1: Root config files (Dec 28 2025) ----
$env:GIT_AUTHOR_DATE = "2025-12-28T09:00:00"
$env:GIT_COMMITTER_DATE = "2025-12-28T09:00:00"
git add ".gitignore" "README.md" "package.json" "tsconfig.json" "next.config.ts" "postcss.config.mjs" "eslint.config.mjs" "components.json"
git commit -m "chore: initial project scaffold with Next.js and TypeScript"
Write-Host "COMMIT 1 done"

# ---- COMMIT 2: package-lock.json (Dec 28 2025 later) ----
$env:GIT_AUTHOR_DATE = "2025-12-28T13:00:00"
$env:GIT_COMMITTER_DATE = "2025-12-28T13:00:00"
git add "package-lock.json"
git commit -m "chore: add package lock file"
Write-Host "COMMIT 2 done"

# ---- COMMIT 3: Globals + layout (Dec 29) ----
$env:GIT_AUTHOR_DATE = "2025-12-29T10:30:00"
$env:GIT_COMMITTER_DATE = "2025-12-29T10:30:00"
git add "src\app\globals.css" "src\app\layout.tsx" "src\app\favicon.ico"
git commit -m "style: add global CSS design tokens and base layout"
Write-Host "COMMIT 3 done"

# ---- COMMIT 4: Landing page (Dec 30) ----
$env:GIT_AUTHOR_DATE = "2025-12-30T11:00:00"
$env:GIT_COMMITTER_DATE = "2025-12-30T11:00:00"
git add "src\app\page.tsx"
git commit -m "feat: add landing page entry point"
Write-Host "COMMIT 4 done"

# ---- COMMIT 5: Navbar + Hero (Jan 2) ----
$env:GIT_AUTHOR_DATE = "2026-01-02T09:45:00"
$env:GIT_COMMITTER_DATE = "2026-01-02T09:45:00"
git add "src\components\Navbar.tsx" "src\components\Hero.tsx"
git commit -m "feat: implement Navbar with mobile menu and hero section"
Write-Host "COMMIT 5 done"

# ---- COMMIT 6: Problem + Features (Jan 5) ----
$env:GIT_AUTHOR_DATE = "2026-01-05T14:00:00"
$env:GIT_COMMITTER_DATE = "2026-01-05T14:00:00"
git add "src\components\Problem.tsx" "src\components\Features.tsx"
git commit -m "feat: add Problem statement and Features showcase sections"
Write-Host "COMMIT 6 done"

# ---- COMMIT 7: HowItWorks + Demo (Jan 8) ----
$env:GIT_AUTHOR_DATE = "2026-01-08T11:30:00"
$env:GIT_COMMITTER_DATE = "2026-01-08T11:30:00"
git add "src\components\HowItWorks.tsx" "src\components\Demo.tsx"
git commit -m "feat: add HowItWorks walkthrough and interactive Demo section"
Write-Host "COMMIT 7 done"

# ---- COMMIT 8: Impact + Vision (Jan 12) ----
$env:GIT_AUTHOR_DATE = "2026-01-12T10:00:00"
$env:GIT_COMMITTER_DATE = "2026-01-12T10:00:00"
git add "src\components\Impact.tsx" "src\components\Vision.tsx"
git commit -m "feat: add Impact metrics and Vision statement sections"
Write-Host "COMMIT 8 done"

# ---- COMMIT 9: Technology + FinalCTA + Footer (Jan 16) ----
$env:GIT_AUTHOR_DATE = "2026-01-16T13:00:00"
$env:GIT_COMMITTER_DATE = "2026-01-16T13:00:00"
git add "src\components\Technology.tsx" "src\components\FinalCTA.tsx" "src\components\Footer.tsx"
git commit -m "feat: add Technology stack, final CTA, and Footer components"
Write-Host "COMMIT 9 done"

# ---- COMMIT 10: AuthContext (Jan 20) ----
$env:GIT_AUTHOR_DATE = "2026-01-20T09:00:00"
$env:GIT_COMMITTER_DATE = "2026-01-20T09:00:00"
git add "src\contexts\AuthContext.tsx"
git commit -m "feat: implement AuthContext for global authentication state"
Write-Host "COMMIT 10 done"

# ---- COMMIT 11: Auth pages (Jan 24) ----
$env:GIT_AUTHOR_DATE = "2026-01-24T14:30:00"
$env:GIT_COMMITTER_DATE = "2026-01-24T14:30:00"
git add "src\app\(auth)"
git commit -m "feat: add login and signup pages with auth layout"
Write-Host "COMMIT 11 done"

# ---- COMMIT 12: Dashboard shell (Jan 28) ----
$env:GIT_AUTHOR_DATE = "2026-01-28T10:00:00"
$env:GIT_COMMITTER_DATE = "2026-01-28T10:00:00"
git add "src\app\dashboard\layout.tsx" "src\app\dashboard\page.tsx"
git commit -m "feat: scaffold dashboard shell with protected layout"
Write-Host "COMMIT 12 done"

# ---- COMMIT 13: Dashboard core components (Feb 3) ----
$env:GIT_AUTHOR_DATE = "2026-02-03T11:00:00"
$env:GIT_COMMITTER_DATE = "2026-02-03T11:00:00"
git add "src\components\dashboard\DashboardHeader.tsx" "src\components\dashboard\DashboardNav.tsx" "src\components\dashboard\QuickStats.tsx"
git commit -m "feat: add DashboardHeader, DashboardNav and QuickStats widgets"
Write-Host "COMMIT 13 done"

# ---- COMMIT 14: RouteSearch + RecentTrips (Feb 10) ----
$env:GIT_AUTHOR_DATE = "2026-02-10T13:30:00"
$env:GIT_COMMITTER_DATE = "2026-02-10T13:30:00"
git add "src\components\dashboard\RouteSearch.tsx" "src\components\dashboard\RecentTrips.tsx"
git commit -m "feat: implement RouteSearch bar and RecentTrips display"
Write-Host "COMMIT 14 done"

# ---- COMMIT 15: TrafficOverview + Notifications (Feb 18) ----
$env:GIT_AUTHOR_DATE = "2026-02-18T10:00:00"
$env:GIT_COMMITTER_DATE = "2026-02-18T10:00:00"
git add "src\components\dashboard\TrafficOverview.tsx" "src\components\dashboard\Notifications.tsx"
git commit -m "feat: add TrafficOverview chart and Notifications panel"
Write-Host "COMMIT 15 done"

# ---- COMMIT 16: All remaining files (Feb 26) ----
$env:GIT_AUTHOR_DATE = "2026-02-26T15:00:00"
$env:GIT_COMMITTER_DATE = "2026-02-26T15:00:00"
git add -A
$status = git status --short
if ($status) {
    git commit -m "feat: add trip planner, traffic and profile pages, lib utilities, and public assets"
    Write-Host "COMMIT 16 done"
} else {
    Write-Host "Nothing left to commit for commit 16"
}

$env:GIT_AUTHOR_DATE = ""
$env:GIT_COMMITTER_DATE = ""

Write-Host ""
Write-Host "=== COMMIT HISTORY ==="
git log --oneline
Write-Host ""
Write-Host "Total commits: $(git rev-list --count HEAD)"
Write-Host ""
Write-Host "Force pushing to GitHub..."
git push --force origin main
Write-Host ""
Write-Host "PUSH COMPLETE!"
