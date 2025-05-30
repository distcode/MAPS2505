cls

$x = ""

# Referenzen laden

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

# Form und Controls erzeugen
# Form
$objForm = New-Object system.Windows.Forms.Form
$objForm.Text = "Titel des Fensters"
$objForm.Size = New-Object system.Drawing.Size(600,400)
$objForm.StartPosition = "CenterScreen"

# OK-Button
$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Size(75,120)
$OKButton.Size = New-Object System.Drawing.Size(75,23)
$OKButton.Text = "OK"
$OKButton.DialogResult = "OK"

# Cancel-Button
$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Size(150,120)
$CancelButton.Size = New-Object System.Drawing.size(75,23)
$CancelButton.Text = "Cancel"
$CancelButton.DialogResult = "Cancel"

# Label
$objLabel = New-Object System.Windows.Forms.Label
$objLabel.Location = New-Object System.Drawing.Size(10,20)
$objLabel.Size = New-Object System.Drawing.Size(280,20)
$objLabel.Text = "Please enter the information:"

# Textbox
$objTextbox = New-Object System.Windows.Forms.TextBox
$objTextbox.Location = New-Object System.Drawing.Size(10,40)
$objTextbox.size = New-Object System.Drawing.Size(260,20)

# Zusammenbau
#
$objForm.Controls.Add($OKButton)
$objForm.Controls.Add($CancelButton)
$objForm.Controls.Add($objLabel)
$objForm.Controls.Add($objTextbox)

# Settings

$objForm.KeyPreview = $true # Tasten an Form schicken und nicht an das aktive Control 
$objForm.Add_KeyDown({if ($_.KeyCode -eq "Enter") {$global:x = $objTextbox.Text; $objForm.DialogResult = "OK";$objForm.Close()}})
$objForm.Add_KeyDown({if ($_.KeyCode -eq "Escape") {$objForm.Close()}})

$OKButton.Add_Click({$objForm.Close()})
$CancelButton.Add_Click({$objForm.Close()})

$objForm.TopMost = $true
$objForm.ActivateControl($objTextbox)

$objForm.add_Shown({$objForm.Activate()})
$objForm.ShowDialog()


if ( $objForm.DialogResult -eq "OK" )
{
	Write-host "$($objTextbox.Text) und OK wurde gedrückt."
}
else
{
	Write-Host "Cancel wurde gedrückt."
}

