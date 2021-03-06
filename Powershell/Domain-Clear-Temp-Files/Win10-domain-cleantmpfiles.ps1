$tempfolders = @("C:\Windows\Prefetch*", "C:\Windows\Downloaded Installations*", "C:\Users\*\AppData\Local\Microsoft\Windows\INetCache\IE*", "C:\Users\*\Appdata\Local\Temp*", "C:\Users\*\AppData\Roaming\Microsoft\Installer*")

$Server = Read-Host -Prompt 'Input the computer name:'
$Domain = (Get-WmiObject Win32_ComputerSystem).Domain
$User = Read-Host -Prompt 'Input your username:'

Write-Output 'Connecting to remote system'

Enter-PSSession -ComputerName $Server -Credential $Domain\$User

Write-Output 'Clearing temp files'

Remove-Item $tempfolders -force -recurse -ErrorAction SilentlyContinue

Write-Output 'All temp files cleared!'

Write-Output 'Quitting!'

Write-Output 'All Done!'
Exit