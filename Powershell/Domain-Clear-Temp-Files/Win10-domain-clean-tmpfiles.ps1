$Server = Read-Host -Prompt 'Input the computer name:'
$Domain = (Get-WmiObject Win32_ComputerSystem).Domain
$User = Read-Host -Prompt 'Input your username:'

Write-Output 'Connecting to remote system...'

Enter-PSSession -ComputerName $Server -Credential $Domain\$User

Write-Output 'Clearing program temporary installation files...'

Set-Location “C:\Windows"
Remove-Item ".\Downloaded Installations*” -Force -Recurse -ErrorAction SilentlyContinue

Write-Output 'Clearing all user temporary internet files...'

Set-Location “C:\Users”
Remove-Item “.\*\AppData\Local\Microsoft\Windows\INetCache\IE*” -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item “.\*\AppData\Roaming\Microsoft\Installer*” -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item “.\*\Appdata\Local\Temp*” -Force -Recurse -ErrorAction SilentlyContinue
Write-Output 'Clear all user temp files...'

Write-Output 'Ignore the errors!!!'

Write-Output 'All temp files cleared!'
Write-Output 'All Done!'
Exit