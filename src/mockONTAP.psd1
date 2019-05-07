﻿@{
    RootModule        = 'mockONTAP.psm1'
    ModuleVersion     = '0.0.1'
    GUID              = '9e5c466b-8966-499c-a0fc-1a59d94a4d37'
    Author            = @('Joseph Pulk', 'Glenn Sizemore', 'Jason Cole')
    CompanyName       = 'Unknown'
    Copyright         = '(c) Joseph Pulk. All rights reserved.'
    Description       = 'A PowerShell Module for Mocking DataONTAP toolkit functions'
    PowerShellVersion = '5.0'
    RequiredModules   = @('DataONTAP')
    FunctionsToExport = @(
        'Connect-NcController'
        'Add-NcCifsShare'
        'Add-NcIgroupInitiator'
        'Add-NcIgroupPortset'
        'Add-NcLunMap'
        'Add-NcPortset'
        'Add-NcPortsetPort'
        'Add-NcQuota'
        'Disable-NcQuota'
        'Enable-NcQuota'
        'Get-NcAggr'
        'Get-NcAggrSpace'
        'Get-NcCifsShare'
        'Get-NcDisk'
        'Get-NcIgroup'
        'Get-NcJob'
        'Get-NcLunMap'
        'Get-NcNetInterface'
        'Get-NcNodeInfo'
        'Get-NcQuota'
        'Get-NcQuotaStatus'
        'Get-NcSnapMirror'
        'Get-NcVserver'
        'Invoke-NcSnapMirrorAbort'
        'Invoke-NcSnapMirrorBreak'
        'Invoke-NcSnapMirrorInitialize'
        'Invoke-NcSnapMirrorUpdate'
        'Invoke-NcSnapmirrorQuiesce'
        'Invoke-NcSnapmirrorResume'
        'Invoke-NcSnapmirrorResync'
        'New-NcIgroup'
        'New-NcPortset'
        'New-NcSnapMirror'
        'New-NcVol'
        'New-NcVserver'
        'New-MockNcAggr'
        'New-MockNcAggrSpace'
        'New-MockNcCifsShare'
        'New-MockNcController'
        'New-MockNcDisk'
        'New-MockNcIgroup'
        'New-MockNcJob'
        'New-MockNcNetInterface'
        'New-MockNcNode'
        'New-MockNcNodeInfo'
        'New-MockNcLunMap'
        'New-MockNcPortset'
        'New-MockNcQuota'
        'New-MockNcQuotaStatus'
        'New-MockNcSnapMirror'
        'New-MockNcSnapMirrorJobStart'
        'New-MockNcSnapmirrorVolume'
        'New-MockNcVol'
        'New-MockNcVserver'
        'Remove-NcCifsShare'
        'Remove-NcIgroup'
        'Remove-NcIgroupInitiator'
        'Remove-NcIgroupPortset'
        'Remove-NcLunMap'
        'Remove-NcPortset'
        'Remove-NcPortsetPort'
        'Remove-NcQuota'
        'Remove-NcSnapMirror'
        'Remove-NcVserver'
        'Set-NcCifsShare'
        'Set-NcIgroup'
        'Set-NcQuota'
        'Start-NcQuotaResize'
        'Set-NcSnapMirror'
        'Stop-NcVserver'
        'Start-NcVserver'
        'Test-NcSnapmirrorVolume'
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

