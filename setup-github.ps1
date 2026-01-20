# Haraz Inventory - GitHub Setup Script
# Run this script to initialize git and prepare for deployment

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Haraz Inventory - GitHub Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if git is installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "ERROR: Git is not installed!" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit
}

Write-Host "Git is installed ✓" -ForegroundColor Green
Write-Host ""

# Get user input
Write-Host "Please enter your GitHub repository details:" -ForegroundColor Yellow
$username = Read-Host "GitHub Username"
$reponame = Read-Host "Repository Name (e.g., haraz-inventory)"

Write-Host ""
Write-Host "Initializing Git repository..." -ForegroundColor Cyan

# Initialize git if not already initialized
if (-not (Test-Path ".git")) {
    git init
    Write-Host "Git repository initialized ✓" -ForegroundColor Green
} else {
    Write-Host "Git repository already exists ✓" -ForegroundColor Green
}

# Add all files
Write-Host "Adding files to git..." -ForegroundColor Cyan
git add .

# Commit
Write-Host "Creating initial commit..." -ForegroundColor Cyan
git commit -m "Initial commit: Haraz Inventory PWA with delete functionality"

# Set main branch
git branch -M main

# Add remote
$remoteUrl = "https://github.com/$username/$reponame.git"
Write-Host "Setting remote repository: $remoteUrl" -ForegroundColor Cyan

# Remove existing remote if it exists
git remote remove origin 2>$null

git remote add origin $remoteUrl

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Create a repository on GitHub named: $reponame" -ForegroundColor White
Write-Host "2. Run this command to push your code:" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. Enable GitHub Pages:" -ForegroundColor White
Write-Host "   - Go to repository Settings > Pages" -ForegroundColor White
Write-Host "   - Set Source to 'GitHub Actions'" -ForegroundColor White
Write-Host ""
Write-Host "4. Your site will be live at:" -ForegroundColor White
Write-Host "   https://$username.github.io/$reponame/" -ForegroundColor Cyan
Write-Host ""

Read-Host "Press Enter to exit"
