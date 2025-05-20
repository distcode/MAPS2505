
$Colors = "Yellow","Magenta","Blue"

$curColor = $Colors | Get-Random -Count 1

switch ($curColor) {

    "Yellow" {
        "Die Farbe ist Gelb."
        break
    }
    "Magenta" {
        "Die Farbe ist Magenta."
        break
    }
    "Yellow" {
        "Die Farbe ist Gelb. noch immer ..."
        break
    }
    default {
        "Diese Farbe kenne ich nicht ..."
    }
}
