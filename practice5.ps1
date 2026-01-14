Get-Process -Name notepad | Select-Object Name, Id

Get-ChildItem C:\Temp\Test

$file = Get-ChildItem -Path "C:\Temp\Test" -Filter *.csv | Select Name, Length
$sizeinKB = $file.Length/1KB
$sizeinMB = $file.Length/1MB
Write-Host " "
Write-Host "`nFileName : "$file.Name
Write-Host "Size in KB : "$sizeinKB
Write-Host "Size in MB : "$sizeinMB