
param (

    [parameter(ValueFromPipeLine=$true)]
    $Colors
)


BEGIN {
    "This is our Rainbow."
}

PROCESS {

    foreach ( $tempColor in $Colors ) {
        Write-Host -BackgroundColor $tempColor -Object 'RAINBOW'
    }
}

END {
    "Thank you ..."
}