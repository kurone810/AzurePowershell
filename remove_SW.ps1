Get-VMSwitch | Where-Object {$_.Name -ne "既定のスイッチ" } | Remove-VMSwitch -Force
Get-VMSwitch