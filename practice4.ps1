[int]$value1 = Read-Host "Anna üks number: "
[int]$value2 = Read-Host "Anna teine number: "
if ($value1 -gt $value2)
  {
  Write-Host "Esimene number $value1 on suurem kui $value2"
  }
elseif ($value1 -lt $value2)
  {
  Write-Host "Teine number $value2 on suurem kui $value1"
  }
else
  {
  Write-Host "Numbrid on võrdsed"
  }

Write-Host "Vali riik: " -ForegroundColor Yellow
Write-Host "1: India" -ForegroundColor Cyan
Write-Host "2: Austraalia" -ForegroundColor Cyan
Write-Host "3: Hiina" -ForegroundColor Cyan
$valik = Read-Host "Palun vali riik: "
if ($valik -eq 1)
  {
  Write-Host "India pealinn on New-Delhi"
  }
elseif ($valik -eq 2){
Write-Host "Austraalia pealinn on Canberra"
}
elseif ($valik -eq 3){
Write-Host "Hiina pealinn on Peking"
}
else{
Write-Host "Vali number 1-3"
}
