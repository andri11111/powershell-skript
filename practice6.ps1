$csv = Import-Csv C:\Users\andri\Desktop\test123.csv
$result = @()
foreach($c in $csv)
{
if([int]$c.Age -ge 4 -and [int]$c.Age -le 10)
{
$school = "Junior"
}
elseif([int]$c.Age -ge 11 -and [int]$c.Age -le 17)
{
$school = "Senior"
}
$temp = [PSCustomObject]@{
Name = $c.Name
School = $school
}
$result += $temp
}
$result