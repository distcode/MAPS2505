
# Parametercheck

function Do-Foo {

    [cmdletbinding()]
    param (

        [string]$Name
    )

    Write-Host "Geht's Dir gut $Name ???"
}

# Funktioniert:
Do-Foo -Name Heinz

# Funktioniert NICHT:
Do-Foo -Name Heinz 'AnyText'
