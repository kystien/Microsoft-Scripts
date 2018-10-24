$tempfolders = @("C:\Windows\Temp*", "C:\Windows\Prefetch*", "C:\Windows\Downloaded Program Files*", "C:\Windows\SoftwareDistribution\Download*", "C:\Users\*\AppData\Local\Microsoft\Windows\Temporary Internet Files*", "C:\Users\*\Appdata\Local\Temp*")

$Server = Read-Host -Prompt 'Input the computer name:'

$User = Read-Host -Prompt 'Input your username:'

Write-Output 'Connecting to remote system'

Enter-PSSession -ComputerName $Server -Credential $Server\$User

Write-Output 'Clearing temp files'

Remove-Item $tempfolders -force -recurse -ErrorAction SilentlyContinue

Write-Output 'All temp files cleared!'

Write-Output 'Quitting!'

Exit-PSSession