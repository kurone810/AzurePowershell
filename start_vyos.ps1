Get-VM | Where-Object {$_.Name -like "vy*" -and $_.Name -ne "vyOS_template"} | Start-VM
Get-VM | Where-Object {$_.Name -like "vy*" -and $_.Name -ne "vyOS_template"}