Start-Transcript -Path "C:\Desktop\PCI_ApplicationList.txt"
Get-WmiObject -Class Win32_Product
stop-transcript
Start-Transcript -Path "C:\Desktop\PCI_ServiceList.txt"
Get-Service
stop-transcript
Start-Transcript -Path "C:\Desktop\PCI_ProcessList.txt"
Get-Process
stop-Transcript
Start-Transcript -Path "C:\Desktop\PCI_LocalUserList.txt"
Get-WmiObject -Class Win32_UserAccount -Filter  "Status='OK'" |
  Select PSComputername, Name, Status, Disabled, AccountType, Lockout, PasswordRequired, PasswordChangeable, SID 
stop-transcript
Start-Transcript -Path "C:\Desktop\PCI_ADUserList.txt"
Import-Module activedirectory
Get-ADUser tuser -properties PasswordExpired, PasswordLastSet, PasswordNeverExpires
stop-transcript
Start-Transcript -Path "C:\Desktop\PCI_OpenPorts.txt"
netstat
stop-transcript
