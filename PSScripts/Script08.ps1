

function Write-Hello {
    
    Write-Host "Hello $env:Username!"
    Write-Host ('It is {0:hh:mmtt}' -f (Get-Date))
}

function Show-Weekday {

    $weekday = (get-date).ToString('dddd')

    return $weekday
}
