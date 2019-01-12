@{
    RootModule        = 'mockONTAP.psm1'
    ModuleVersion     = '0.0.1'
    GUID              = '9e5c466b-8966-499c-a0fc-1a59d94a4d37'
    Author            = @('Joseph Pulk', 'Glenn Sizemore')
    CompanyName       = 'Unknown'
    Copyright         = '(c) Joseph Pulk. All rights reserved.'
    Description       = 'A PowerShell Module for Mocking DataONTAP toolkit functions'
    PowerShellVersion = '5.0'
    RequiredModules   = @('dataONTAP')
    FunctionsToExport = @(
        'Connect-NcController'
        'Add-NcIgroupInitiator'
        'Add-NcIgroupPortset'
        'Add-NcPortset'
        'Add-NcPortsetPort'
        'Get-NcAggr'
        'Get-NcAggrSpace'
        'Get-NcDisk'
        'Get-NcIgroup'
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
        'New-MockNcPortset'
        'New-MockNcVol'
        'New-MockNcVserver'
        'Remove-NcIgroup'
        'Remove-NcIgroupInitiator'
        'Remove-NcIgroupPortset'
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
        'private\helpers.ps1'
        'public\NcAggr.ps1'
        'public\NcController.ps1'
        'public\NcDisk.ps1'
        'public\NcIgroup.ps1'
        'public\NcPortset.ps1'
        'public\NcVol.ps1'
        'public\NcVserver.ps1'
    )
    PrivateData       = @{

        PSData = @{

            Tags       = @(
                'NetApp'
                'ONTAP'
                'Pester'
            )
            LicenseUri = 'https://github.com/pulkjr/mockONTAP/blob/master/LICENSE'
            ProjectUri = 'https://github.com/pulkjr/mockONTAP'

        } # End of PSData hashtable

    } # End of PrivateData hashtable

}

