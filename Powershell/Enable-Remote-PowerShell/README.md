Given the issues I was having trying to get two of my machines talking to one another, a win7 and win10, with powershell I created this little script.

For better security remove the * and add your PC names to the following:
winrm set winrm/config/client '@{TrustedHosts="*"}'

Other than that, enjoy and have fun running your own powershell scripts on your local network!
