$Path = Read-Host -Prompt 'Location of files you wish to git'
$Repo = Read-Host -Prompt 'Repo Address'
$Commit = Read-Host -Prompt 'Commit message'

Set-Location $Path

$Files = Get-ChildItem -Path * -Recurse -Force

git init
Foreach ($File in $Files) {
	git add $File
}
git commit -m "$Commit"
git remote add origin $Repo
git remote -v
git push --all

