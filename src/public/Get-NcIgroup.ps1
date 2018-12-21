function New-MockNcIgroup
{
    param(
        [Parameter(Mandatory, ParameterSetName = 'one')]
        [String]
        $Name,
        [Parameter(Mandatory, ParameterSetName = 'one')]
        [String]
        $Vserver,
        [Parameter(ParameterSetName = 'one')]
        [String]
        $Initiator,
        [Parameter(ParameterSetName = 'two')]
        [switch]
        $Template,
        [Parameter(ParameterSetName = 'three')]
        $Query,
        [Parameter(ParameterSetName = 'one')]
        [Parameter(ParameterSetName = 'three')]
        $Attributes,
        $VserverContext,
        $Controller
    )

    if ($query.Name)
    {
        $name = $Query.Name
    }
    if ($Query.Vserver)
    {
        $Vserver = $Query
    }
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
    $_mockIgroup.NcController = $Controller
    $_mockIgroup.Vserver = $VserverContext

    return $_mockIgroup
}

function Get-NcIgroup
{
    param(
        [Parameter(Mandatory, ParameterSetName = 'one')]
        [String]
        $Name,
        [Parameter(Mandatory, ParameterSetName = 'one')]
        [String]
        $Vserver,
        [Parameter(ParameterSetName = 'one')]
        [String]
        $Initiator,
        [Parameter(ParameterSetName = 'two')]
        [switch]
        $Template,
        [Parameter(ParameterSetName = 'three')]
        $Query,
        [Parameter(ParameterSetName = 'one')]
        [Parameter(ParameterSetName = 'three')]
        $Attributes,
        $VserverContext,
        $Controller
    )
    New-MockNcIgroup @PSBoundParameters
}