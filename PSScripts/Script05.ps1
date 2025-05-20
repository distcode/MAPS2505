
param (
    [Parameter(Mandatory=$true,HelpMessage='Bitte einen Namen angeben.',Position=1,ParameterSetName='Standard')]
    [Parameter(ParameterSetName='Ext')]
    [String]$FirstName,

    [Alias('YoB')]
    [Parameter(Position=0,ParameterSetName='Ext')]
    [int]$YearOfBirth = 0,

    [Parameter(ParameterSetName='Standard')]
    [ValidateSet('Male','Female')]
    [string]$Sexus
)

Write-Host "Guten Tag $Firstname!" -ForegroundColor White -BackgroundColor DarkRed

if ($YearOfBirth -eq 0 ) {
    
    return
}

$age = (get-date).year - $YearOfBirth

Write-Host "Du bist ca. $age Jahre alt."