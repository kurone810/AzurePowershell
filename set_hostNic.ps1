New-NetIPAddress -InterfaceAlias "vEthernet (内部-WAN-1)" -IPAddress "10.0.1.100" -PrefixLength "24"
New-NetIPAddress -InterfaceAlias "vEthernet (内部-WAN-2)" -IPAddress "10.0.2.100" -PrefixLength "24"
Get-NetAdapter | Where-Object {$_.Name -like "*vEthernet*"}
