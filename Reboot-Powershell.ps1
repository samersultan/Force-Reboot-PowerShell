#Installs PowerShell Module for PSWindowsUpdate
#Reboots systems and creates log file with time and date 

Install-Module -Name PSWindowsUpdate -Force
Import-Module -Name PSWindowsUpdate

Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot | Out-File "C:\$($env:computername)-$(Get-Date -f yyyy-MM-dd)-MSUpdates.log" -Force
