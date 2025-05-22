
configuration Set-LCM-Push
{
    $Computers = @("RDCB1","RDCB2")
    
    Node $Computers
    {
        LocalConfigurationManager
        {
            ConfigurationModeFrequencyMins = 120
            ConfigurationMode = 'ApplyAndAutoCorrect'
            RefreshMode = 'Push'
            RebootNodeIfNeeded = $true
        }
    }
}


[DSCLocalConfigurationManager()]
Configuration Set-LCM-PullSMB
{
    param ([String]$Guid)

    $Computers = @("RDCB1","RDCB2")

    Import-Module PSDesiredStateConfiguration
    
    Node $Computers
    {
        Settings
        {
            RefreshMode = 'Pull'
            RebootNodeIfNeeded = $true
            ConfigurationMode = 'ApplyAndAutoCorrect'
            ConfigurationID = $Guid
        }

        ConfigurationRepositoryShare DemoDSCShare
        {
            SourcePath = '\\RDMP\DSC'
        }
    }
}
