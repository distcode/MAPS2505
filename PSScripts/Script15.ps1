
function Do-Foo-1 {

    "Function: $var1"

    $var1 = $var1 * 3

    "Function: $var1"

    $var2 = 200

    "Function: $var2"
}

function Do-Foo-2 {

    "Function: $var1"

    $global:var1 = $var1 * 3

    "Function: $var1"

}

function Do-Foo-3 {

    "Function: $var4"

}

$var1 = 100
$private:var4 = 400

Do-Foo-3

"Script: $var1"
"Script: $var2"
"Script: $var4"