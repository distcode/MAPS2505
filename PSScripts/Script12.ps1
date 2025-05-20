
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
}

$myHosts = @()

$myHosts += [HostInfo]::new('Asterix',12,'Windows Server 2025')
$myHosts += [HostInfo]::new('Obelix',24,'Windows Server 2016')
$myHosts += [HostInfo]::new('Majestix',24,'Windows Server 2025')

$myHosts