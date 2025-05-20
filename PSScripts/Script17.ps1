
param (

    [parameter(Mandatory=$true)]
    [System.Io.Fileinfo]$File,

    [parameter(Mandatory=$true)]
    [string]$Path
)


if ( -not (Test-Path -Path $Path) ) {

    return 'Path does not exists.'
}

"Das file wird kopiert ..."

