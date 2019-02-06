@{
    RootModule        = 'mockONTAP.psm1'
    ModuleVersion     = '0.0.1'
    GUID              = '9e5c466b-8966-499c-a0fc-1a59d94a4d37'
    Author            = @('Joseph Pulk', 'Glenn Sizemore')
    CompanyName       = 'Unknown'
    Copyright         = '(c) Joseph Pulk. All rights reserved.'
    Description       = 'A PowerShell Module for Mocking DataONTAP toolkit functions'
    PowerShellVersion = '5.0'
    RequiredModules   = @('DataONTAP')
    FunctionsToExport = @(
        'Connect-NcController'
        'Add-NcIgroupInitiator'
        'Add-NcIgroupPortset'
        'Add-NcLunMap'
        'Add-NcPortset'
        'Add-NcPortsetPort'
        'Get-NcAggr'
        'Get-NcAggrSpace'
        'Get-NcDisk'
        'Get-NcIgroup'
        'Get-NcNetInterface'
        'Get-NcNodeInfo'
        'Get-NcLunMap'
        'Get-NcSnapMirror'
        'Get-NcVserver'
        'New-NcIgroup'
        'New-NcPortset'
        'New-NcVol'
        'New-NcVserver'
        'New-MockNcAggr'
        'New-MockNcAggrSpace'
        'New-MockNcController'
        'New-MockNcDisk'
        'New-MockNcIgroup'
        'New-MockNcNetInterface'
        'New-MockNcNode'
        'New-MockNcNodeInfo'
        'New-MockNcLunMap'
        'New-MockNcPortset'
        'New-MockNcSnapMirror'
        'New-MockNcVol'
        'New-MockNcVserver'
        'Remove-NcIgroup'
        'Remove-NcIgroupInitiator'
        'Remove-NcIgroupPortset'
        'Remove-NcLunMap'
        'Remove-NcPortset'
        'Remove-NcPortsetPort'
        'Remove-NcVserver'
        'Set-NcIgroup'
        'Stop-NcVserver'
        'Start-NcVserver'
    )
    VariablesToExport = ''
    AliasesToExport   = ''
    FileList          = @(
        'mockONTAP.psd1'
        'mockONTAP.psm1'
    )
    PrivateData       = @{

        PSData = @{

            Tags                       = @(
                'NetApp'
                'ONTAP'
                'Pester'
            )
            LicenseUri                 = 'https://github.com/pulkjr/mockONTAP/blob/master/LICENSE'
            ProjectUri                 = 'https://github.com/pulkjr/mockONTAP'
            ExternalModuleDependencies = @('DataONTAP')

        } # End of PSData hashtable

    } # End of PrivateData hashtable

}

