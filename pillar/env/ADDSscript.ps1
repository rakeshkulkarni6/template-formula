$securepwd=ConvertTo-SecureString -String "sysadmin@123" -AsPlainText -Force;
Install-ADDSForest `
  -DatabasePath 'C:\Windows\NTDS' `
  -DomainMode 'Win2012' `
  -DomainName 'corp.com' `
  -DomainNetBIOSName 'CORP' `
  -ForestMode 'Win2012' `
  -InstallDNS `
  -LogPath 'C:\Windows\NTDS' `
  -SYSVOLPath 'C:\Windows\SYSVOL' `
  -SafeModeAdministratorPassword $securepwd `
  -Force 