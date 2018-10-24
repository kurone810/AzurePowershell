param (
        $switchLAN = "内部-LAN-CL",
        $switchWAN1 = "内部-WAN-1",
        $switchWAN2 = "内部-WAN-2",
        $switchDC = "内部-LAN-DC"
    )
    New-VMSwitch $switchLAN -SwitchType Internal
    New-VMSwitch $switchWAN1 -SwitchType Internal
    New-VMSwitch $switchWAN2 -SwitchType Internal
    New-VMSwitch $switchDC -SwitchType Internal

    