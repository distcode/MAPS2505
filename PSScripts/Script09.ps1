
$myAuto = New-Object -TypeName psobject

Add-Member -InputObject $myAuto -Name 'Marke' -MemberType NoteProperty -Value 'Ferrari F-40'

$myAuto | Add-Member -Name PS -MemberType NoteProperty -Value 479

$myAuto | Add-Member -Name Tanken -MemberType ScriptMethod {

    'Danke, ich habe jetzt wieder Benzin ...'
    
    }

$myAuto

"Das Auto $($myAuto.Marke) hat $($myAuto.PS) PS - Huraaa!"