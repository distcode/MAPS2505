<#
$input
'*.*.*'
return
#>

foreach ( $curColor in $input ) {

    Write-Host "Rainbow" -ForegroundColor $curColor
}

$input.Reset()

foreach ( $curColor in $input ) {

    Write-Host "Rainbow" -BackgroundColor $curColor
}
