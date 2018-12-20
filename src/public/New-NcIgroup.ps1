function New-NcIgroup
{
    param(
        [Parameter(Mandatory)]
        [String]
        $Name,
        [Parameter(Mandatory)]
        [ValidateSet('iscsi', 'fcp', 'mixed')]
        [String]
        $Protocol,
        [ValidateSet('windows', 'vmware', 'solaris', 'hpux', 'aix', 'linux', 'netware', 'xen', 'hyper_v', 'openvms')]
        $Type = 'windows',
        $Portset,
        [Parameter(Mandatory)]
        [String]
        $VserverContext,
        $Controller
    )

    $_mockIgroup = [DataONTAP.C.Types.Igroup.InitiatorGroupInfo]::New()
    $_mockIgroup.InitiatorGroupAluaEnabled = $true
    $_mockIgroup.InitiatorGroupAluaEnabledSpecified = $true
    $_mockIgroup.InitiatorGroupName = $Name
    $_mockIgroup.InitiatorGroupOsType = $Type

    if (-not [string]::IsNullOrEmpty($Portset))
    {
        $_mockIgroup.InitiatorGroupPortsetName = $Portset

    }
    $_mockIgroup.InitiatorGroupThrottleBorrow = $false
    $_mockIgroup.InitiatorGroupThrottleBorrowSpecified = $true
    $_mockIgroup.InitiatorGroupThrottleReserve = 0
    $_mockIgroup.InitiatorGroupType = $Protocol
    $_mockIgroup.InitiatorGroupUsePartner = $true
    $_mockIgroup.InitiatorGroupUsePartnerSpecified = $true
    $_mockIgroup.InitiatorGroupUuid = '0d63b734-c6a5-11e8-adf4-000c2991c0e1'
    $_mockIgroup.InitiatorGroupVsaEnabled = $false
    $_mockIgroup.InitiatorGroupVsaEnabledSpecified = $true
    $_mockIgroup.LunIdSpecified = $false
    $_mockIgroup.NcController
    $_mockIgroup.Vserver
}