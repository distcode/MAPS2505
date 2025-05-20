
$myAutos = @()

$myAuto = New-Object -TypeName psobject
$myAuto | Add-Member -Name 'Marke' -MemberType NoteProperty -Value 'Ferrari F-40'
$myAuto | Add-Member -Name PS -MemberType NoteProperty -Value 479
$myAuto | Add-Member -Name Tanken -MemberType ScriptMethod {'Danke, ich habe jetzt wieder Benzin ...'}

$myAutos += $myAuto

$myAuto = New-Object -TypeName psobject
$myAuto | Add-Member -Name 'Marke' -MemberType NoteProperty -Value 'Toyota'
$myAuto | Add-Member -Name PS -MemberType NoteProperty -Value 140
$myAuto | Add-Member -Name Tanken -MemberType ScriptMethod {'Danke, ich habe jetzt wieder Benzin ...'}

$myAutos += $myAuto

$myAuto = New-Object -TypeName psobject
$myAuto | Add-Member -Name 'Marke' -MemberType NoteProperty -Value 'BMW'
$myAuto | Add-Member -Name PS -MemberType NoteProperty -Value 150
$myAuto | Add-Member -Name Tanken -MemberType ScriptMethod {'Danke, ich habe jetzt wieder Benzin ...'}

$myAutos += $myAuto