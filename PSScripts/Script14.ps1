
# Write-Verbos

function Do-Foo {

    [cmdletbinding(SupportsShouldProcess=$true,HelpURI='https://www.artforart.at')]
    param (

        [string]$Name
    )

    if ( $PSCmdlet.ShouldProcess('Target','Operation')) {
        Write-Host "Geht's Dir gut $Name ???"
    }
    else {
        Write-Host "Es würde an dieser Position der Aufrufer nach seinem Befinden gefragt werden."
    }

    #    with -WhatIf --> ShouldProcess() = $False
    # without -WhatIf --> ShoudlProcess() = $true

    Write-Verbose "Das ist eine Zusätzliche Information ...."
}

Do-Foo -Name Heinz -WhatIf

Get-Help Do-Foo -Online