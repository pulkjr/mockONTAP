function New-MockNcVserver
{
    [CmdletBinding()]
    param (
        [string]
        $Name,
        [string]
        $RootVolume = 'Exists_root',
        [string]
        $RootVolumeAggregate = 'VICE08_aggr1',
        [string[]]
        $NameServerSwitch = @( 'file' ),
        [string]
        $RootVolumeSecurity = 'unix',
        [string]
        $AntivirusOnAccessPolicy = 'default',
        [string]
        $Comment = 'This is a mocked object',
        [string]
        $Language = 'c.utf_8',
        [string[]]
        $NameMappingSwitch = @( 'file' ),
        [string]
        $QuotaPolicy = 'default',
        [string]
        $SnapShotPolicy = 'default',
        [string]
        $RepositoryVserver,
        [string]
        $Ipspace = 'Default',
        [string]
        $Subtype = 'default',
        [string]
        $CachingPolicy = 'on_read',
        [switch]
        $Async,
        $Controller,
        [string[]]
        $AggrList = @( 'VICE07_aggr1', 'VICE08_aggr1' ),
        [String[]]
        $AllowedProtocols = @( 'nfs', 'fcp' ),
        [string]
        $State = 'running',
        [string[]]
        $DisallowedProtocols = @( 'cifs', 'iscsi', 'ndmp' ),
        [string]
        $LdapDomain = 'ldap.netapp.com',
        $MaxVolumes = 'unlimited',
        $NisDomain = 'nis.netapp.com',
        $OperationalState = 'running',
        $QosPolicyGroup,
        $UUID = 'f38f651a-ca22-11e5-9a1e-00a09830cb90',
        $VolumeDeleteRetentionHours = 12,
        $VserverType = 'data',
        $VserverContext,
        # Provide a deserialized Vserver object to be serialized and output correctly. For instance you can use Import-CliXML to and give the deserialized vservers and they will be returned serialized correctly.
        [Parameter( ValueFromPipeline )]
        [ValidateNotNullOrEmpty()]
        [Object[]]
        $InputObject
    )

    if ( $VserverContext -and ( -not $Name ) )
    {
        $name = $VserverContext
    }
    if ( -Not $Controller )
    {
        $Controller = New-MockNcController
    }
    if ( $InputObject )
    {
        foreach ( $_deserializedObject in $InputObject )
        {
            $mock = Resolve-DeserializedObject -InputObject $_deserializedObject -ReturnObjectType 'DataONTAP.C.Types.Vserver.VserverInfo' -Controller $Controller

            return $mock

        }
    }
    else
    {
        $_mockSVM = [DataONTAP.C.Types.Vserver.VserverInfo]::new()

        $_mockSVM.AggrList = $AggrList
        $_mockSVM.AllowedProtocols = $AllowedProtocols
        $_mockSVM.AntivirusOnAccessPolicy = $AntivirusOnAccessPolicy
        $_mockSVM.CachingPolicy = $CachingPolicy
        $_mockSVM.Comment = $Comment
        $_mockSVM.State = $state
        $_mockSVM.DisallowedProtocols = $DisallowedProtocols
        $_mockSVM.Ipspace = $Ipspace
        $_mockSVM.Language = $Language
        $_mockSVM.LdapDomain = $LdapDomain
        $_mockSVM.MaxVolumes = $MaxVolumes
        $_mockSVM.NameMappingSwitch = $NameMappingSwitch
        $_mockSVM.NameServerSwitch = $NameServerSwitch
        $_mockSVM.NcController = $Controller
        $_mockSVM.NisDomain = $NisDomain
        $_mockSVM.OperationalState = $OperationalState
        $_mockSVM.QosPolicyGroup = $QosPolicyGroup
        $_mockSVM.QuotaPolicy = $QuotaPolicy
        $_mockSVM.RootVolume = $RootVolume
        $_mockSVM.RootVolumeAggregate = $RootVolumeAggregate
        $_mockSVM.RootVolumeSecurityStyle = $RootVolumeSecurity
        $_mockSVM.SnapshotPolicy = $SnapShotPolicy
        $_mockSVM.Uuid = $UUID
        $_mockSVM.VolumeDeleteRetentionHours = $VolumeDeleteRetentionHours
        $_mockSVM.VserverName = $Name
        $_mockSVM.VserverSubtype = $Subtype
        $_mockSVM.VserverType = $VserverType
        $_mockSVM.Vserver = $Name

        return $_mockSVM
    }
}
function New-NcVserver
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Vserver.VserverInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,

        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$RootVolume,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$RootVolumeAggregate,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string[]]$NameServerSwitch,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [ValidateSet( 'unix', 'ntfs', 'mixed' )]
        [string]$RootVolumeSecurityStyle,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$AntivirusOnAccessPolicy,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$Comment,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [ValidateSet( 'C', 'ar', 'cs', 'da', 'de', 'en', 'en_US', 'es', 'fi', 'fr', 'he', 'hr', 'hu', 'it', 'ja', 'ja_v1', 'ja_JP.PCK', 'ja_JP.932', 'ja_JP.PCK_v2', 'ko', 'no', 'nl', 'pl', 'pt', 'ro', 'ru', 'sk', 'sl', 'sv', 'tr', 'zh', 'zh.GBK', 'zh_TW', 'zh_TW.BIG5' )]
        [string]$Language,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [ValidateSet( 'file', 'ldap' )]
        [string[]]$NameMappingSwitch,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$QuotaPolicy = 'default',
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$SnapshotPolicy = 'default',
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$RepositoryVserver,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$Ipspace,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$Subtype,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$CachingPolicy,
        
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Async,

        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [System.Nullable[bool]]$IsSpaceReportingLogical,

        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [System.Nullable[bool]]$IsSpaceEnforcementLogical,

        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )

    New-MockNcVserver @PSBoundParameters
}
function Get-NcVserver
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Vserver.VserverInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Name,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch]$Template,
        [Parameter( ParameterSetName = 'Template' )]
        [switch]$Fill,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Vserver.VserverInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Vserver.VserverInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    foreach ( $_name in $name )
    {
        New-MockNcVserver -Name $_name -VserverContext $VserverContext -Controller $Controller
    }
}

function Remove-NcVserver
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Async,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )

    return $null
}
function Stop-NcVserver
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Vserver.VserverInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )

    New-MockNcVserver @PSBoundParameters -State 'stopped'
}
function Start-NcVserver
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Vserver.VserverInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Force,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )

    New-MockNcVserver @PSBoundParameters -State 'running'
}
