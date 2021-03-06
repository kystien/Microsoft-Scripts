$tempfolders = @("C:\Windows\Temp*", "C:\Windows\Prefetch*", "C:\Windows\Downloaded Program Files*", "C:\Windows\SoftwareDistribution\Download*", "C:\Users\*\AppData\Local\Microsoft\Windows\Temporary Internet Files*", "C:\Users\*\Appdata\Local\Temp*")

$Server = Read-Host -Prompt 'Input the computer name:'
$Domain = (Get-WmiObject Win32_ComputerSystem).Domain
$User = Read-Host -Prompt 'Input your Admin username:'

Write-Output 'Connecting to remote system'

Enter-PSSession -ComputerName $Server -Credential $Domain\$User

Write-Output 'Clearing temp files'

Remove-Item $tempfolders -force -recurse -ErrorAction SilentlyContinue

Write-Output 'All temp files cleared!'

Write-Output 'Quitting!'

Exit-PSSession