# init-repo.ps1
# PowerShell script to initialize a local folder as a Git repo and link remote

# Variables
$LocalPath = "C:\MyProjects\NewRepo"
$RepoURL = "https://github.com/YOUR_USERNAME/NEW_REPO.git"

# Create folder if not exists
if (-not (Test-Path $LocalPath)) {
    New-Item -ItemType Directory -Path $LocalPath | Out-Null
}

Set-Location $LocalPath

# Initialize git repo if not already
if (-not (Test-Path "$LocalPath\.git")) {
    git init
    git remote add origin $RepoURL
    Write-Host "Initialized new repo and linked remote."
} else {
    Write-Host "Repo already initialized."
}
