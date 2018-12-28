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
        'Get-NcIgroup'
        'New-NcIgroup'
        'New-NcVol'
        'New-NcVserver'
        'New-MockNcController'
        'New-MockNcIgroup'
        'Remove-NcIgroup'
        'Remove-NcIgroupInitiator'
        'Remove-NcIgroupPortset'
        'Set-NcIgroup'
    )
    VariablesToExport = ''
    AliasesToExport   = ''
    FileList          = @(
        'mockONTAP.psd1'
        'mockONTAP.psm1'
        'public\Connect-NcController.ps1'
        'public\NcIgroup.ps1'
        'public\New-NcVol.ps1'
        'public\New-NcVserver.ps1'
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

