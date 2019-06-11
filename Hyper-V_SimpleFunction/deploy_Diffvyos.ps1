$Parent = "C:\Users\Public\Documents\Hyper-V\Virtual hard disks\vyOS_template.vhdx"


New-VHD -Path "C:\Users\Public\Documents\Hyper-V\Virtual hard disks\vyOS_LAN1.vhdx"

New-VHD -Path "C:\Users\Public\Documents\Hyper-V\Virtual hard disks\vyOS_LAN2.vhdx" 

New-VHD -Path "C:\Users\Public\Documents\Hyper-V\Virtual hard disks\vyOS_DC3.vhdx" 

New-VHD -Path "C:\Users\Public\Documents\Hyper-V\Virtual hard disks\vyOS_DC4.vhdx" 


New-VM -Name "vyOS_LAN1" -MemoryStartupBytes 256MB -VHDPath "C:\Users\Public\Documents\Hyper-V\Virtual hard disks\vyOS_LAN1.vhdx" -SwitchName "内部-LAN-CL" -Generation 1


New-VM -Name "vyOS_LAN2" -MemoryStartupBytes 256MB -VHDPath "C:\Users\Public\Documents\Hyper-V\Virtual hard disks\vyOS_LAN2.vhdx" -SwitchName "内部-LAN-CL" -Generation 1


New-VM -Name "vyOS_DC3" -MemoryStartupBytes 256MB -VHDPath "C:\Users\Public\Documents\Hyper-V\Virtual hard disks\vyOS_DC3.vhdx" -SwitchName "内部-LAN-DC" -Generation 1


New-VM -Name "vyOS_DC4" -MemoryStartupBytes 256MB -VHDPath "C:\Users\Public\Documents\Hyper-V\Virtual hard disks\vyOS_DC4.vhdx" -SwitchName "内部-LAN-DC" -Generation 1

Get-VM | Where-Object {$_.Name -like "vyOS*" -and $_.Name -ne "vyOS_template"} | Start-VM


<#
Add-VMNetworkAdapter "vyOS_LAN1" -Name "アダプターWAN-1"
Connect-VMNetworkAdapter  "vyOS_LAN1" -Name "アダプターWAN-1" -SwitchName "内部-WAN-1"
Rename-VMNetworkAdapter "vyOS_LAN1" -Name "ネットワーク アダプター" -NewName "アダプターLAN-CL"


Add-VMNetworkAdapter "vyOS_LAN2" -Name "アダプターWAN-2"
Connect-VMNetworkAdapter  "vyOS_LAN2" -Name "アダプターWAN-2" -SwitchName "内部-WAN-2"
Rename-VMNetworkAdapter "vyOS_LAN2" -Name "ネットワーク アダプター" -NewName "アダプターLAN-CL"


Add-VMNetworkAdapter "vyOS_DC3" -Name "アダプターWAN-1"
Connect-VMNetworkAdapter  "vyOS_DC3" -Name "アダプターWAN-1" -SwitchName "内部-WAN-1"
Rename-VMNetworkAdapter "vyOS_DC3" -Name "ネットワーク アダプター" -NewName "アダプターLAN-DC"

Add-VMNetworkAdapter "vyOS_DC4" -Name "アダプターWAN-2"
Connect-VMNetworkAdapter  "vyOS_DC4" -Name "アダプターWAN-2" -SwitchName "内部-WAN-2"
Rename-VMNetworkAdapter "vyOS_DC4" -Name "ネットワーク アダプター" -NewName "アダプターLAN-DC"

#>
Get-VM