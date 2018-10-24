Set-ExecutionPolicy remotesigned -Force
Enable-PSRemoting -Force
winrm set winrm/config/client '@{TrustedHosts="*"}'
winrm set winrm/config/client '@{AllowUnencryoted="true"}'
winrm set winrm/config/service '@{AllowUnencryoted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/service '@{EnableCompatibilityHttpListener="true"}'
winrm set winrm/config/service '@{EnableCompatibilityHttpsListener="true"}'
Exit-PSSession