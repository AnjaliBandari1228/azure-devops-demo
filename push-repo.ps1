# push-repo.ps1
# PowerShell script to push changes to a GitHub/Azure DevOps repo

# Variables
$LocalPath = "C:\MyProjects\REPO_NAME"
$Branch = "main"
$CommitMessage = "Update from PowerShell script"

# Navigate to local repo
Set-Location $LocalPath

# Stage, commit, and push
git add .
git commit -m $CommitMessage
git push origin $Branch
