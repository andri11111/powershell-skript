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