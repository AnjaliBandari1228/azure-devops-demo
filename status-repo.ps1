# status-repo.ps1
# PowerShell script to check repo status

# Variables
$LocalPath = "C:\MyProjects\REPO_NAME"

Set-Location $LocalPath

Write-Host "Checking repo status..."
git status
