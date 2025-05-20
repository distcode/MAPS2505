
function Do-Foo-1 {

    param (

        $Name,
        $YoB
    )

    "I'm doing anything ...."

    # Do-Foo-2 -Name $Name -YoB $YoB

    $PSBoundParameters.Remove('Name')

    Do-Foo-2 @PSBoundParameters
}

Function Do-Foo-2 {

    param (

        $Name = 'Peppi',
        $YoB
    )
    
    "Doing also things ....."
    "`$Name: $Name"
    "`$YoB: $YoB"
}

Do-Foo-1 -Name Heinz -YoB 2000