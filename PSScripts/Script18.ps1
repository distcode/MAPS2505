
Set-StrictMode -Version latest
$ErrorActionPreference = 'Stop'

$a = 100
<#
do {
    $b = Read-Host 'Bitte eine Zahl zwischen 0 und 100 eingeben'
} while ($b -eq 0)


if ($b -eq 0 ) {
    return
}
#>

$b = Read-Host 'Bitte eine Zahl zwischen 0 und 100 eingeben'


try {
    
    $result = $a / $b

    # throw 

    Get-ChildItem HKLM:\ 
    
}
catch [System.DivideByZeroException] {
    "Bitte nicht durch 0 dividieren."
    return
}
catch [System.FormatException] {
    "Bitte nur ganze Zahlen eingeben."
    return
}
catch {
    "Es ist ein Fehler aufgetreten."
    $Error[0] | Format-List -Property * -Force

    "******"

    $Error[0].InvocationInfo

    "******"
    return
}

Write-Host "Das Ergebnis der Division lautet: $result"

