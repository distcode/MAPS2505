
class HostInfo {

    [string]$Hostname
    [int]$RAM
    [string]$OS

    [datetime]$Created

    HostInfo () {
        $this.Created = Get-Date
    }

    HostInfo($hostname,$ram,$os) {
        $this.Hostname = $hostname
        $this.RAM = $ram
        $this.OS = $os
        $this.Created = Get-Date
    }

    Restart () {
        Invoke-Command -ComputerName $this.Hostname -ScriptBlock { Restart-Computer -force }
    }

    Restart ([int]$seconds) {
        Start-Sleep -Seconds $seconds
        Invoke-Command -ComputerName $this.Hostname -ScriptBlock { Restart-Computer -force }
    }
}

$MAPSInfo = 'Created at MAPS course.'
New-Variable -Name MAPSStatus -Value 'loaded'


function Write-Hello {

    Write-host "Guten Tag $env:Username!" -ForegroundColor Yellow -BackgroundColor Blue

}

function Write-Status { 

    Write-Host "Sie sind angemeldet als $env:username."
    Write-Host "Sie sitzen am Rechner $env:Computername."
    Write-Host "Es ist $((Get-date).ToShortDateString())."
    Write-Host "$MapsInfo"
}

[psobject].Assembly.GetType('System.Management.Automation.TypeAccelerators')::Add('HostInfo',[HostInfo])

Export-ModuleMember -Variable MAPSStatus
Export-ModuleMember -Function Write-*

