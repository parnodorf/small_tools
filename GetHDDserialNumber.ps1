echo '需要一点时间'
powershell WMIC path win32_physicalmedia get serialnumber
pause
echo 方案二结果：
$info=Get-WMIObject -class win32_PhysicalMedia
foreach($Disk in $info){Write-Host $Disk['SerialNumber']}
pause
