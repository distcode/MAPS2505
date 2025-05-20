
Class myAutoExt {
    
    [String]$Marke
    [int]$PS

    [ValidateRange(0,100)]
    [double]$Tankfuellung

    Tanken($Fuellung) {

        $this.Tankfuellung = $Fuellung
    }
    
    myAutoExt() {
        
        $this.Tankfuellung = 100
    }

    myAutoExt($Fuellung) {

        $this.Tankfuellung = $Fuellung
    }

    myAutoExt ($Marke,$PS,$Fuellung) {
        $this.Marke = $Marke
        $this.PS = $PS
        $this.Tankfuellung = $Fuellung
    }
}

$myAutos = @()


$myAuto = [myAutoExt]::new()
$myAuto.Marke = 'Ferrari'
$myAuto.PS = 479
$myAuto.Tanken(45)

$myAutos += $myAuto

$myAuto = [myAutoExt]::new()
$myAuto.Marke = 'Toyota'
$myAuto.PS = 140
$myAuto.Tanken(85)

$myAutos += $myAuto

$myAuto = [myAutoExt]::new()
$myAuto.Marke = 'BMW'
$myAuto.PS = 140

$myAutos += $myAuto

$myAuto = [myAutoExt]::new(15)
$myAuto.Marke = 'Lambo'
$myAuto.PS = 400

$myAutos += $myAuto

$myAuto = [myAutoExt]::new('Jaguar',210,55)

$myAutos += $myAuto

$myAutos