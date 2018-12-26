function New-MockNcIgroup
{
    param(
        [String]
        $Name,
        [String]
        $Vserver,
        [String[]]
        $Initiator,
        [switch]
        $Template,
        $Query,
        $Attributes,
        $VserverContext,
        $Controller,
        $Type,
        $Portset,
        $Protocol
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

    $_mockIgroup.Initiators = @()
    foreach ( $i in $Initiator )
    {
        $_initiator = [DataONTAP.C.Types.Igroup.InitiatorInfo]::New()
        $_initiator.InitiatorName = $i
        $_initiator.NcController = $Controller
        $_mockIgroup.Initiators += $_initiator
    }

    return $_mockIgroup
}

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
        $Type,
        $Portset,
        [Parameter(Mandatory)]
        [String]
        $VserverContext,
        $Controller
    )

    New-MockNcIgroup @PSBoundParameters
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

function Remove-NcIgroup
{
    [OutputType([void])]
    param(
        [Parameter(Mandatory)]
        [String]
        $Name,
        [Parameter(Mandatory)]
        [String]
        $VserverContext,
        $Controller,
        [switch]
        $Force
    )

    return
}

function Set-NcIgroup
{
    param(
        $Name,
        $VserverContext,
        $Key,
        $Value,
        $Controller
    )

    $GetParam = @{
        Name    = $Name
        Vserver = $VserverContext
        Type    = $Value
    }
    
    mockONTAP\New-MockNcIgroup @GetParam
}

function Add-NcIgroupInitiator
{
    param(
        $Name,
        $VserverContext,
        $Controller,
        $Initiator,
        $ReturnInitiators
    )

    $GetParam = @{
        Name       = $Name
        Vserver    = $VserverContext
        Controller = $Controller
        Initiator  = $ReturnInitiators
    }
    
    mockONTAP\New-MockNcIgroup @GetParam
}
function Remove-NcIgroupInitiator
{
    param(
        $Name,
        $VserverContext,
        $Controller,
        $Initiator,
        $ReturnInitiators
    )

    $GetParam = @{
        Name       = $Name
        Vserver    = $VserverContext
        Controller = $Controller
        Initiator  = $ReturnInitiators
    }
    
    mockONTAP\New-MockNcIgroup @GetParam
}