# clone-repo.ps1
# PowerShell script to clone or pull a GitHub/Azure DevOps repo

# Variables
$RepoURL = "https://github.com/YOUR_USERNAME/REPO_NAME.git"   # or Azure DevOps repo URL
$LocalPath = "C:\MyProjects\REPO_NAME"

# If folder exists, pull latest changes; otherwise clone fresh
if (Test-Path $LocalPath) {
    Write-Host "Repo already exists. Pulling latest changes..."
    Set-Location $LocalPath
    git pull origin main
} else {
    Write-Host "Cloning repository..."
    git clone $RepoURL $LocalPath
}
