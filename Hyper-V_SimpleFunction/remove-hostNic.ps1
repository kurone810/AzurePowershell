Remove-NetIPAddress -InterfaceAlias "vEthernet (内部-WAN-1)"
Remove-NetIPAddress -InterfaceAlias "vEthernet (内部-WAN-2)"
New-NetIPAddress -InterfaceAlias "vEthernet (内部-LAN-CL)" -IPAddress "192.168.10.100" -DefaultGateway 192.168.10.250 -PrefixLength "24"
Get-NetAdapter | Where-Object {$_.Name -like "*vEthernet*"}
