#Practice 2
$daysworked = @{
    "John" = 12
    "Joe" = 10
    "Mary" = 18
}
$salaryperday = @{
    "John" = 100
    "Joe" = 120
    "Mary" = 150
}
$salary = @{}
foreach ($name in $daysWorked.Keys) {
    $salary[$name] = $daysWorked[$name] * $salaryPerDay[$name]
}

$salary