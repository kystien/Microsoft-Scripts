@echo off
@title = VM Loader
echo loading virtual machines
echo please wait...
echo starting Sandbox
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm "sandbox" --type "headless"
echo Sandbox started succesfully
echo please wait...
echo starting Kali
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm "Kali" --type "headless"
echo Kali started succesfully
exit