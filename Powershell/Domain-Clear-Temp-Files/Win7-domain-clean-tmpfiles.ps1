$Server = Read-Host -Prompt 'Input the computer name:'
$Domain = (Get-WmiObject Win32_ComputerSystem).Domain
$User = Read-Host -Prompt 'Input your Admin username:'

Write-Output 'Connecting to remote system...'

Enter-PSSession -ComputerName $Server -Credential $Domain\$User

Write-Output 'Clearing Microsoft update files... '

Set-Location "C:\Windows"
Remove-Item ".\SoftwareDistribution\Download*" -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item ".\Downloaded Program Files*" -Force -Recurse -ErrorAction SilentlyContinue
Write-Output 'Clearing program temporary installation files...'

Write-Output 'Clearing all user temporary internet files...'

Set-Location "C:\Users"
Remove-Item ".\*\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5*" -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item ".\*\Appdata\Local\Temp*" -Force -Recurse -ErrorAction SilentlyContinue
Write-Output 'Clear all user temp files...'

Write-Output 'All temp files cleared!'

Exit