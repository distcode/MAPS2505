
# Keyhandler

## Chord: Ctrl + 8 -> pipeline in ( ) 

Set-PSReadLineKeyHandler -Chord 'Ctrl+8' -ScriptBlock {

    [Microsoft.PowerShell.PSConsoleReadLine]::BeginningOfLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('(')
    [Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert(')')
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('.')
}