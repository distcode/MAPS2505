
# Keyhandler

## Chord: Ctrl + 8 -> pipeline in ( ) 

Set-PSReadLineKeyHandler -Chord 'Ctrl+8' -ScriptBlock {

    [Microsoft.PowerShell.PSConsoleReadLine]::BeginningOfLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('(')
    [Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert(')')
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('.')
}

<# function prompt {
"$([char]0x1b)[32mPS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) $([char]0x1b)[37m";
}
#>