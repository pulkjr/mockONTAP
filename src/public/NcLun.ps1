function New-MockNcLun
{
    param(
        $Protocol = 'vmware',
        $Alignment = 'aligned',
        $Application,
        $ApplicationUuid,
        $BackingSnapshot,
        $BlockSize = '512',
        $BlockSizeSpecified = $true,
        $Class = 'regular',
        $CloneBackingSnapshot,
        $Comment,
        $CreationTimestamp = '1529602990',
        $CreationTimestampSpecified = $true,
        $DeviceBinaryId,
        $DeviceId,
        $DeviceIdSpecified = $false,
        $DeviceTextId,
        $IsClone = $false,
        $IsCloneAutodeleteEnabled = $false,
        $IsCloneAutodeleteEnabledSpecified = $true,
        $IsCloneSpecified = $true,
        $IsInconsistentImport = $false,
        $IsInconsistentImportSpecified = $true,
        $IsRestoreInaccessible = $false,
        $IsRestoreInaccessibleSpecified = $true,
        $IsSpaceAllocEnabled = $false,
        $IsSpaceAllocEnabledSpecified = $true,
        $IsSpaceReservationEnabled = $false,
        $IsSpaceReservationEnabledSpecified = $true,
        $Mapped = $true,
        $MappedSpecified = $true,
        $MultiprotocolType = 'vmware',
        $NcController = 'cluster01',
        $Node = 'cluster01-01',
        $Online = $true,
        $OnlineSpecified = $true,
        $Path = '/vol/vol1/vmare.lun',
        $PrefixSize = '0',
        $PrefixSizeSpecified = $true,
        $QosAdaptivePolicyGroup,
        $QosPolicyGroup,
        $Qtree,
        $ReadOnly = $false,
        $ReadOnlySpecified = $true,
        $Serial7Mode,
        $SerialNumber = '80DtQ+LeT6Zh',
        $ShareState = 'none',
        $Size = '5497558138880',
        $SizeSpecified = $true,
        $SizeUsed = '3539179409408',
        $SizeUsedSpecified = $true,
        $Staging = $false,
        $StagingSpecified = $true,
        $State = 'online',
        $SuffixSize = '0',
        $SuffixSizeSpecified = $true,
        $Uuid = '46af21ad-358d-4216-9755-61aba7c514f7',
        $Volume = 'vol1',
        $Vserver = 'vmwaresvm',
        $Thin = $true,
        [DataONTAP.C.Types.Lun.LunInfo]$Query,
        [DataONTAP.C.Types.Lun.LunInfo]$Attributes,
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    elseif ( $NcController -is [string])
    {
        $NcController = New-MockNcController -Name $NcController
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Lun.LunInfo]::New()
    $returnObj.Protocol = $Protocol
    $returnObj.Alignment = $Alignment
    $returnObj.Application = $Application
    $returnObj.ApplicationUuid = $ApplicationUuid
    $returnObj.BackingSnapshot = $BackingSnapshot
    $returnObj.BlockSize = $BlockSize
    $returnObj.BlockSizeSpecified = $BlockSizeSpecified
    $returnObj.Class = $Class
    $returnObj.CloneBackingSnapshot = $CloneBackingSnapshot
    $returnObj.Comment = $Comment
    $returnObj.CreationTimestamp = $CreationTimestamp
    $returnObj.CreationTimestampSpecified = $CreationTimestampSpecified
    $returnObj.DeviceBinaryId = $DeviceBinaryId
    $returnObj.DeviceId = $DeviceId
    $returnObj.DeviceIdSpecified = $DeviceIdSpecified
    $returnObj.DeviceTextId = $DeviceTextId
    $returnObj.IsClone = $IsClone
    $returnObj.IsCloneAutodeleteEnabled = $IsCloneAutodeleteEnabled
    $returnObj.IsCloneAutodeleteEnabledSpecified = $IsCloneAutodeleteEnabledSpecified
    $returnObj.IsCloneSpecified = $IsCloneSpecified
    $returnObj.IsInconsistentImport = $IsInconsistentImport
    $returnObj.IsInconsistentImportSpecified = $IsInconsistentImportSpecified
    $returnObj.IsRestoreInaccessible = $IsRestoreInaccessible
    $returnObj.IsRestoreInaccessibleSpecified = $IsRestoreInaccessibleSpecified
    $returnObj.IsSpaceAllocEnabled = $IsSpaceAllocEnabled
    $returnObj.IsSpaceAllocEnabledSpecified = $IsSpaceAllocEnabledSpecified
    $returnObj.IsSpaceReservationEnabled = $IsSpaceReservationEnabled
    $returnObj.IsSpaceReservationEnabledSpecified = $IsSpaceReservationEnabledSpecified
    $returnObj.Mapped = $Mapped
    $returnObj.MappedSpecified = $MappedSpecified
    $returnObj.MultiprotocolType = $MultiprotocolType
    $returnObj.NcController = $NcController
    $returnObj.Node = $Node
    $returnObj.Online = $Online
    $returnObj.OnlineSpecified = $OnlineSpecified
    $returnObj.Path = $Path
    $returnObj.PrefixSize = $PrefixSize
    $returnObj.PrefixSizeSpecified = $PrefixSizeSpecified
    $returnObj.QosAdaptivePolicyGroup = $QosAdaptivePolicyGroup
    $returnObj.QosPolicyGroup = $QosPolicyGroup
    $returnObj.Qtree = $Qtree
    $returnObj.ReadOnly = $ReadOnly
    $returnObj.ReadOnlySpecified = $ReadOnlySpecified
    $returnObj.Serial7Mode = $Serial7Mode
    $returnObj.SerialNumber = $SerialNumber
    $returnObj.ShareState = $ShareState
    $returnObj.Size = $Size
    $returnObj.SizeSpecified = $SizeSpecified
    $returnObj.SizeUsed = $SizeUsed
    $returnObj.SizeUsedSpecified = $SizeUsedSpecified
    $returnObj.Staging = $Staging
    $returnObj.StagingSpecified = $StagingSpecified
    $returnObj.State = $State
    $returnObj.SuffixSize = $SuffixSize
    $returnObj.SuffixSizeSpecified = $SuffixSizeSpecified
    $returnObj.Uuid = $Uuid
    $returnObj.Volume = $Volume
    $returnObj.Vserver = $Vserver
    $returnObj.Thin = $Thin
    return $returnObj
}
function ConvertTo-NcLun
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.Types.Lun.LunInfo] )]
    param(
        [string]$SourceVhd,
        [string]$SourceVhdx,
        [string]$DestinationLun,
        [switch]$Reserved,
        [string]$Type,
        [string]$SnapshotName,
        [NetApp.Ontapi.AbstractController]$Controller
    )
    New-MockNcLun -Path $DestinationLun -NcController $Controller
}
function Get-NcLun
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Lun.LunInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Path,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Vserver,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Volume,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Qtree,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Lun.LunInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Lun.LunInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    [hashtable] $in = @{
        Path         = $Path
        Vserver      = $VserverContext
        Volume       = $Volume
        Qtree        = $Qtree
        NcController = New-MockNcController
    }
    if ( $Controller )
    {
        foreach ( $NcController in $Controller )
        {
            $in.NcController = $NcController
            New-MockNcLun @in 
        }
    }
    else
    {
        New-MockNcLun @in 
    }
}
function New-NcLun
{
    [CmdletBinding( DefaultParameterSetName = 'CreateBySize', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Lun.LunInfo] )]
    param(
        [Parameter( ParameterSetName = 'CreateBySize', Mandatory )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk', Mandatory )]
        [Parameter( ParameterSetName = 'CreateFromFile', Mandatory )]
        [string]$Path,
        [Parameter( ParameterSetName = 'CreateBySize', Mandatory )]
        [string]$Size,
        [Parameter( ParameterSetName = 'CreateFromFile', Mandatory )]
        [string]$SourceFile,
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk', Mandatory )]
        [string]$ForeignDisk,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [string]$OsType,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [switch]$Unreserved,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [switch]$ThinProvisioningSupportEnabled,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [System.Nullable[long]]$PrefixSize,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [string]$QosPolicyGroup,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [string]$Class,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [string]$Comment,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [System.Nullable[bool]]$UseExactSize,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [string]$Application,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [string]$QosAdaptivePolicyGroup,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [System.Nullable[int]]$BlockSize,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'CreateBySize' )]
        [Parameter( ParameterSetName = 'CreateBySizeUseForeignDisk' )]
        [Parameter( ParameterSetName = 'CreateFromFile' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    [hashtable] $in = @{
        Path                      = $Path
        Size                      = $Size
        Vserver                   = $VserverContext
        Protocol                  = $OsType
        IsSpaceReservationEnabled = $true
        Thin                      = $false
        PrefixSize                = $PrefixSize
        QosPolicyGroup            = $QosPolicyGroup
        Class                     = $Class
        Comment                   = $Comment
        Application               = $Application
        QosAdaptivePolicyGroup    = $QosAdaptivePolicyGroup
        BlockSize                 = $BlockSize
        NcController              = New-MockNcController
    }
    if ( $ThinProvisioningSupportEnabled )
    {
        $in.This = $true
    }
    if ( $Unreserved )
    {
        $in.IsSpaceReservationEnabled = $false
    }
    if ( $Controller )
    {
        foreach ( $NcController in $Controller )
        {
            $in.NcController = $NcController
            New-MockNcLun @in 
        }
    }
    else
    {
        New-MockNcLun @in 
    }
}
function Remove-NcLun
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Path,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Force,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$DestroyFencedLun,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$DestroyApplicationLun,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}
function Rename-NcLun
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Lun.LunInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Path,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$NewPath,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    if ( $Controller )
    {
        foreach ( $NcController in $Controller )
        {
            New-MockNcLun -Path $NewPath -Vserver $VserverContext -NcController $NcController
        }
    }
    else
    {
        New-MockNcLun -Path $NewPath -Vserver $VserverContext -NcController $( New-MockNcController )
    }
}
function Set-NcLun
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Lun.LunInfo] )]
    param(
        [Parameter( ParameterSetName = 'online', Mandatory )]
        [Parameter( ParameterSetName = 'offline', Mandatory )]
        [string]$Path,
        [Parameter( ParameterSetName = 'online', Mandatory )]
        [switch]$Online,
        [Parameter( ParameterSetName = 'offline', Mandatory )]
        [switch]$Offline,
        [Parameter( ParameterSetName = 'online' )]
        [Parameter( ParameterSetName = 'offline' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'online' )]
        [Parameter( ParameterSetName = 'offline' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    [hashtable] $in = @{
        Path         = $Path
        Vserver      = $VserverContext
        NcController = New-MockNcController
        State        = 'online'
        Online       = $true
    }
    if ( $Offline )
    {
        $in.State = 'online'
        $in.Online = $false
    }
    if ( $Controller )
    {
        foreach ( $NcController in $Controller )
        {
            $in.NcController = $NcController
            New-MockNcLun @in
        }
    }
    else
    {
        New-MockNcLun @in
    }
}