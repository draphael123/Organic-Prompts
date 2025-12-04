# Export to GitHub - PowerShell Script
# Edit the variables below with your GitHub username and repository name

$GITHUB_USERNAME = "YOUR-USERNAME-HERE"
$REPO_NAME = "organic-content-team-prompts"

Write-Host "🚀 Setting up Git repository..." -ForegroundColor Cyan

# Initialize git if not already done
if (-not (Test-Path .git)) {
    git init
    Write-Host "✅ Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "✅ Git repository already exists" -ForegroundColor Green
}

# Add all files
Write-Host "📦 Adding files..." -ForegroundColor Cyan
git add .

# Create initial commit
Write-Host "💾 Creating commit..." -ForegroundColor Cyan
git commit -m "Initial commit: Team resources website and prompts"
Write-Host "✅ Commit created" -ForegroundColor Green

# Rename branch to main if needed
git branch -M main

Write-Host ""
Write-Host "⚠️  IMPORTANT: Create the repository on GitHub first!" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Go to: https://github.com/new" -ForegroundColor White
Write-Host "2. Repository name: $REPO_NAME" -ForegroundColor White
Write-Host "3. Choose Private (recommended) or Public" -ForegroundColor White
Write-Host "4. DO NOT initialize with README" -ForegroundColor White
Write-Host "5. Click 'Create repository'" -ForegroundColor White
Write-Host ""
$continue = Read-Host "Press Enter after you've created the repository on GitHub"

# Add remote and push
Write-Host "🔗 Connecting to GitHub..." -ForegroundColor Cyan
$GITHUB_URL = "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
git remote add origin $GITHUB_URL 2>$null
if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Remote added" -ForegroundColor Green
} else {
    Write-Host "⚠️  Remote might already exist, continuing..." -ForegroundColor Yellow
    git remote set-url origin $GITHUB_URL
}

Write-Host "📤 Pushing to GitHub..." -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ Success! Your code is now on GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "🌐 View your repository:" -ForegroundColor Cyan
    Write-Host "   https://github.com/$GITHUB_USERNAME/$REPO_NAME" -ForegroundColor White
    Write-Host ""
    Write-Host "🚀 Next step: Deploy to Vercel" -ForegroundColor Cyan
    Write-Host "   1. Go to: https://vercel.com" -ForegroundColor White
    Write-Host "   2. Click 'Add New → Project'" -ForegroundColor White
    Write-Host "   3. Import your GitHub repository" -ForegroundColor White
    Write-Host "   4. Set Root Directory to: website" -ForegroundColor White
    Write-Host "   5. Click Deploy" -ForegroundColor White
} else {
    Write-Host ""
    Write-Host "❌ Error pushing to GitHub" -ForegroundColor Red
    Write-Host "Make sure you've:" -ForegroundColor Yellow
    Write-Host "  - Created the repository on GitHub" -ForegroundColor Yellow
    Write-Host "  - Set the correct GITHUB_USERNAME in this script" -ForegroundColor Yellow
    Write-Host "  - Have GitHub authentication set up" -ForegroundColor Yellow
}

