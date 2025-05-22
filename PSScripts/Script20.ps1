
$Computers = 'MAPS-DC1','MAPS-SRV1','MAPS-CL1','MAPS-CL2'

foreach ( $computer in $Computers ) {

  Start-Job -ScriptBlock {
    "$((Get-CimInstance -ClassName Win32_ComputerSystem -CimSession $using:computer).TotalPhysicalMemory) $($using:computer)";
    Start-Sleep -Seconds (Get-Random -Minimum 1 -Maximum 7)
  }
  
}

Get-Job | Wait-Job

Get-Job | Receive-Job

