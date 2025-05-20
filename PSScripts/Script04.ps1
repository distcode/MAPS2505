
for ( $i = 1; $i -le 5; $i++) {

    "Das ist der $i. Durchlauf"
}

$Colors = "Yellow","Magenta","Blue","Brow","Black","White"

#region Foreach Statement
foreach ( $tempColor in $Colors ) {

    "Die Farbe ist $tempColor"
}
#endregion

$myProcesses = Get-Process p*

foreach ( $tempProcess in $myProcesses ) {

    # "Der Processname lautet $($tempProcess.Processname) und benögtigt $($tempProcess.Workingset) Hauptspeicher."
    "Der Processname lautet {0,-21} und benötigt {1,9:n2} Hauptspeicher." -f $tempProcess.ProcessName,($tempProcess.WorkingSet / 1MB)
}