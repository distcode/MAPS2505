
$a = Get-Random -Minimum 1 -Maximum 100


if ($a -ge 75) {

    "Die Zahl ist größer oder gleich 75, nämlich $a"
}
elseif ($a -ge 50) {

    "Die Zahl ist größer oder gleich 50, nämlich $a"
}
elseif ($a -ge 25) {

    "Die Zahl ist größer oder gleich 25, nämlich $a"
}    
else {

    "Die Zahl ist nicht größer als 25, nämlich $a"
}