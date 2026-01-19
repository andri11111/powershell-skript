$nimi = Read-Host "Mis on su nimi? "
$mitkorda = Read-Host "Mitu korda tervitust kuvada (arv)"
Write-Host " "

# Suuname kogu väljundi faili
$reportFile = "report.txt"

# Tervitus
for ($i = 1; $i -le $mitkorda; $i++) {
    "Tere, $nimi! ($i)" | Tee-Object -FilePath $reportFile -Append
}

" " | Out-File -FilePath $reportFile -Append

# Süsteemi info
"Arvutinimi: $env:COMPUTERNAME" | Out-File -FilePath $reportFile -Append
"Kasutajanimi: $env:USERNAME" | Out-File -FilePath $reportFile -Append
"Powershelli versioon: $($PSVersionTable.PSVersion)" | Out-File -FilePath $reportFile -Append
" " | Out-File -FilePath $reportFile -Append

# Töötavad protsessid
"3 Töötavat protsessi" | Out-File -FilePath $reportFile -Append
Get-Process | Select-Object -First 3 Name, Id, CPU | Format-Table | Out-String | Out-File -FilePath $reportFile -Append
" " | Out-File -FilePath $reportFile -Append

# Teenused
"3 teenust nende olekuga" | Out-File -FilePath $reportFile -Append
Get-Service | Select-Object -First 3 Name, Status, DisplayName | Format-Table | Out-String | Out-File -FilePath $reportFile -Append
" " | Out-File -FilePath $reportFile -Append

# Versiooni kontroll
if ($PSVersionTable.PSVersion.Major -lt 5) {
    "HOIATUS: Powershelli vanus on liiga vana" | Out-File -FilePath $reportFile -Append
} else {
    "Powershell versioon on sobiv (5+)" | Out-File -FilePath $reportFile -Append
}

# Skripti lõpp
Write-Host "===========================" -ForegroundColor Green
Write-Host "Script finished successfully" -ForegroundColor Green
Write-Host "===========================" -ForegroundColor Green