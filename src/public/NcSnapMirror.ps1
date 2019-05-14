function New-MockNcSnapMirror
{
    param(
        $Status = 'idle',
        $BreakFailedCount = '0',
        $BreakFailedCountSpecified = 'True',
        $BreakSuccessfulCount = '0',
        $BreakSuccessfulCountSpecified = 'True',
        $CurrentMaxTransferRate = '',
        $CurrentMaxTransferRateSpecified = 'False',
        $CurrentOperationId = '',
        $CurrentTransferError = '',
        $CurrentTransferPriority = '',
        $CurrentTransferType = '',
        $DestinationCluster = '',
        $DestinationLocation = 'sm_test:dp_dest',
        $DestinationVolume = 'dp_dest',
        $DestinationVolumeNode = 'cluster02-01',
        $DestinationVserver = 'sm_test',
        $DestinationVserverUuid = 'dc11da2e-2a10-11e9-bb03-000c297a98ed',
        $ExportedSnapshot = '',
        $ExportedSnapshotTimestamp = '',
        $ExportedSnapshotTimestampSpecified = 'False',
        $FileRestoreFileCount = '',
        $FileRestoreFileCountSpecified = 'False',
        $FileRestoreFileList = '',
        $IdentityPreserve = '',
        $IdentityPreserveSpecified = 'False',
        $IsAutoExpandEnabled = '',
        $IsAutoExpandEnabledSpecified = 'False',
        $IsConstituent = 'False',
        $IsConstituentSpecified = 'True',
        $IsHealthy = 'True',
        $IsHealthySpecified = 'True',
        $LagTime = '',
        $LagTimeSpecified = 'False',
        $LastTransferDuration = '',
        $LastTransferDurationSpecified = 'False',
        $LastTransferEndTimestamp = '',
        $LastTransferEndTimestampSpecified = 'False',
        $LastTransferError = '',
        $LastTransferErrorCodes = '',
        $LastTransferErrorCodesSpecified = 'False',
        $LastTransferFrom = '',
        $LastTransferNetworkCompressionRatio = '',
        $LastTransferSize = '',
        $LastTransferSizeSpecified = 'False',
        $LastTransferType = '',
        $MaxTransferRate = '0',
        $MaxTransferRateSpecified = 'True',
        $MirrorState = 'uninitialized',
        $NcController = '172.16.32.20',
        $NetworkCompressionRatio = '',
        $NewestSnapshot = '',
        $NewestSnapshotTimestamp = '',
        $NewestSnapshotTimestampSpecified = 'False',
        $Opmask = '18446744073709551615',
        $OpmaskSpecified = 'True',
        $Policy = 'MirrorAndVault',
        $PolicyType = 'mirror_vault',
        $ProgressLastUpdated = '',
        $ProgressLastUpdatedSpecified = 'False',
        $PseudoCommonSnapFailedCount = '',
        $PseudoCommonSnapFailedCountSpecified = 'False',
        $PseudoCommonSnapSuccessCount = '',
        $PseudoCommonSnapSuccessCountSpecified = 'False',
        $RelationshipControlPlane = 'v2',
        $RelationshipGroupType = 'none',
        $RelationshipId = '8400356d-2a13-11e9-bb03-000c297a98ed',
        $RelationshipProgress = '',
        $RelationshipProgressSpecified = 'False',
        $RelationshipStatus = 'idle',
        $RelationshipType = 'extended_data_protection',
        $ResyncAvgTimeSyncCg = '',
        $ResyncAvgTimeSyncCgSpecified = 'False',
        $ResyncFailedCount = '0',
        $ResyncFailedCountSpecified = 'True',
        $ResyncSuccessfulCount = '0',
        $ResyncSuccessfulCountSpecified = 'True',
        $Schedule = '',
        $SnapshotCheckpoint = '',
        $SnapshotCheckpointSpecified = 'False',
        $SnapshotProgress = '',
        $SnapshotProgressSpecified = 'False',
        $SourceCluster = '',
        $SourceLocation = 'TestSVM:rw_source',
        $SourceVolume = 'rw_source',
        $SourceVserver = 'TestSVM',
        $SourceVserverUuid = '081d5662-cf0e-11e8-b29d-000c2991c0e1',
        $TotalTransferBytes = '0',
        $TotalTransferBytesSpecified = 'True',
        $TotalTransferTimeSecs = '0',
        $TotalTransferTimeSecsSpecified = 'True',
        $TransferSnapshot = '',
        $Tries = '',
        $TriesSpecified = 'False',
        $UnhealthyReason = '',
        $UpdateFailedCount = '0',
        $UpdateFailedCountSpecified = 'True',
        $UpdateSuccessfulCount = '0',
        $UpdateSuccessfulCountSpecified = 'True',
        $Vserver = 'sm_test',
        $Query,
        $VserverContext
    )
    $returnObj = [DataONTAP.C.Types.Snapmirror.SnapmirrorInfo]::New()
    $returnObj.Status = $Status
    $returnObj.BreakFailedCount = $BreakFailedCount
    $returnObj.BreakFailedCountSpecified = $BreakFailedCountSpecified
    $returnObj.BreakSuccessfulCount = $BreakSuccessfulCount
    $returnObj.BreakSuccessfulCountSpecified = $BreakSuccessfulCountSpecified
    $returnObj.CurrentMaxTransferRate = $CurrentMaxTransferRate
    $returnObj.CurrentMaxTransferRateSpecified = $CurrentMaxTransferRateSpecified
    $returnObj.CurrentOperationId = $CurrentOperationId
    $returnObj.CurrentTransferError = $CurrentTransferError
    $returnObj.CurrentTransferPriority = $CurrentTransferPriority
    $returnObj.CurrentTransferType = $CurrentTransferType
    $returnObj.DestinationCluster = $DestinationCluster
    $returnObj.DestinationLocation = $DestinationLocation
    $returnObj.DestinationVolume = $DestinationVolume
    $returnObj.DestinationVolumeNode = $DestinationVolumeNode
    $returnObj.DestinationVserver = $DestinationVserver
    $returnObj.DestinationVserverUuid = $DestinationVserverUuid
    $returnObj.ExportedSnapshot = $ExportedSnapshot
    $returnObj.ExportedSnapshotTimestamp = $ExportedSnapshotTimestamp
    $returnObj.ExportedSnapshotTimestampSpecified = $ExportedSnapshotTimestampSpecified
    $returnObj.FileRestoreFileCount = $FileRestoreFileCount
    $returnObj.FileRestoreFileCountSpecified = $FileRestoreFileCountSpecified
    $returnObj.FileRestoreFileList = $FileRestoreFileList
    $returnObj.IdentityPreserve = $IdentityPreserve
    $returnObj.IdentityPreserveSpecified = $IdentityPreserveSpecified
    $returnObj.IsAutoExpandEnabled = $IsAutoExpandEnabled
    $returnObj.IsAutoExpandEnabledSpecified = $IsAutoExpandEnabledSpecified
    $returnObj.IsConstituent = $IsConstituent
    $returnObj.IsConstituentSpecified = $IsConstituentSpecified
    $returnObj.IsHealthy = $IsHealthy
    $returnObj.IsHealthySpecified = $IsHealthySpecified
    $returnObj.LagTime = $LagTime
    $returnObj.LagTimeSpecified = $LagTimeSpecified
    $returnObj.LastTransferDuration = $LastTransferDuration
    $returnObj.LastTransferDurationSpecified = $LastTransferDurationSpecified
    $returnObj.LastTransferEndTimestamp = $LastTransferEndTimestamp
    $returnObj.LastTransferEndTimestampSpecified = $LastTransferEndTimestampSpecified
    $returnObj.LastTransferError = $LastTransferError
    $returnObj.LastTransferErrorCodes = $LastTransferErrorCodes
    $returnObj.LastTransferErrorCodesSpecified = $LastTransferErrorCodesSpecified
    $returnObj.LastTransferFrom = $LastTransferFrom
    $returnObj.LastTransferNetworkCompressionRatio = $LastTransferNetworkCompressionRatio
    $returnObj.LastTransferSize = $LastTransferSize
    $returnObj.LastTransferSizeSpecified = $LastTransferSizeSpecified
    $returnObj.LastTransferType = $LastTransferType
    $returnObj.MaxTransferRate = $MaxTransferRate
    $returnObj.MaxTransferRateSpecified = $MaxTransferRateSpecified
    $returnObj.MirrorState = $MirrorState
    $returnObj.NcController = $NcController
    $returnObj.NetworkCompressionRatio = $NetworkCompressionRatio
    $returnObj.NewestSnapshot = $NewestSnapshot
    $returnObj.NewestSnapshotTimestamp = $NewestSnapshotTimestamp
    $returnObj.NewestSnapshotTimestampSpecified = $NewestSnapshotTimestampSpecified
    $returnObj.Opmask = $Opmask
    $returnObj.OpmaskSpecified = $OpmaskSpecified
    $returnObj.Policy = $Policy
    $returnObj.PolicyType = $PolicyType
    $returnObj.ProgressLastUpdated = $ProgressLastUpdated
    $returnObj.ProgressLastUpdatedSpecified = $ProgressLastUpdatedSpecified
    $returnObj.PseudoCommonSnapFailedCount = $PseudoCommonSnapFailedCount
    $returnObj.PseudoCommonSnapFailedCountSpecified = $PseudoCommonSnapFailedCountSpecified
    $returnObj.PseudoCommonSnapSuccessCount = $PseudoCommonSnapSuccessCount
    $returnObj.PseudoCommonSnapSuccessCountSpecified = $PseudoCommonSnapSuccessCountSpecified
    $returnObj.RelationshipControlPlane = $RelationshipControlPlane
    $returnObj.RelationshipGroupType = $RelationshipGroupType
    $returnObj.RelationshipId = $RelationshipId
    $returnObj.RelationshipProgress = $RelationshipProgress
    $returnObj.RelationshipProgressSpecified = $RelationshipProgressSpecified
    $returnObj.RelationshipStatus = $RelationshipStatus
    $returnObj.RelationshipType = $RelationshipType
    $returnObj.ResyncAvgTimeSyncCg = $ResyncAvgTimeSyncCg
    $returnObj.ResyncAvgTimeSyncCgSpecified = $ResyncAvgTimeSyncCgSpecified
    $returnObj.ResyncFailedCount = $ResyncFailedCount
    $returnObj.ResyncFailedCountSpecified = $ResyncFailedCountSpecified
    $returnObj.ResyncSuccessfulCount = $ResyncSuccessfulCount
    $returnObj.ResyncSuccessfulCountSpecified = $ResyncSuccessfulCountSpecified
    $returnObj.Schedule = $Schedule
    $returnObj.SnapshotCheckpoint = $SnapshotCheckpoint
    $returnObj.SnapshotCheckpointSpecified = $SnapshotCheckpointSpecified
    $returnObj.SnapshotProgress = $SnapshotProgress
    $returnObj.SnapshotProgressSpecified = $SnapshotProgressSpecified
    $returnObj.SourceCluster = $SourceCluster
    $returnObj.SourceLocation = $SourceLocation
    $returnObj.SourceVolume = $SourceVolume
    $returnObj.SourceVserver = $SourceVserver
    $returnObj.SourceVserverUuid = $SourceVserverUuid
    $returnObj.TotalTransferBytes = $TotalTransferBytes
    $returnObj.TotalTransferBytesSpecified = $TotalTransferBytesSpecified
    $returnObj.TotalTransferTimeSecs = $TotalTransferTimeSecs
    $returnObj.TotalTransferTimeSecsSpecified = $TotalTransferTimeSecsSpecified
    $returnObj.TransferSnapshot = $TransferSnapshot
    $returnObj.Tries = $Tries
    $returnObj.TriesSpecified = $TriesSpecified
    $returnObj.UnhealthyReason = $UnhealthyReason
    $returnObj.UpdateFailedCount = $UpdateFailedCount
    $returnObj.UpdateFailedCountSpecified = $UpdateFailedCountSpecified
    $returnObj.UpdateSuccessfulCount = $UpdateSuccessfulCount
    $returnObj.UpdateSuccessfulCountSpecified = $UpdateSuccessfulCountSpecified
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function New-MockNcSnapMirrorJobStart
{
    param(
        $ErrorCode = '',
        $ErrorMessage = '',
        $JobId = '',
        $JobVserver = '',
        $NcController = '172.16.32.20',
        $ResultOperationId = '257d118d-2a32-11e9-bb03-000c297a98ed',
        $Status = 'succeeded'
    )
    $returnObj = [DataONTAP.C.Types.Snapmirror.SnapmirrorJobStartResult]::New()
    $returnObj.ErrorCode = $ErrorCode
    $returnObj.ErrorMessage = $ErrorMessage
    $returnObj.JobId = $JobId
    $returnObj.JobVserver = $JobVserver
    $returnObj.NcController = $NcController
    $returnObj.ResultOperationId = $ResultOperationId
    $returnObj.Status = $Status
    return $returnObj
}
function New-MockNcSnapmirrorVolume
{
    param(
        $IsDestination = 'False',
        $IsSource = 'False',
        $IsTransferBroken = 'False',
        $IsTransferInProgress = 'False',
        $NcController = '172.16.32.20',
        $Volume = 'dp_dest',
        $Vserver = 'sm_test'
    )
    $returnObj = [DataONTAP.C.Types.Snapmirror.VolSnapmirrorStatus]::New()
    $returnObj.IsDestination = $IsDestination
    $returnObj.IsSource = $IsSource
    $returnObj.IsTransferBroken = $IsTransferBroken
    $returnObj.IsTransferInProgress = $IsTransferInProgress
    $returnObj.NcController = $NcController
    $returnObj.Volume = $Volume
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function Get-NcSnapMirror
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Snapmirror.SnapmirrorInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [switch]$Expand,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch]$Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Snapmirror.SnapmirrorInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Snapmirror.SnapmirrorInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )

    [hashtable]$_PSBoundParameters = $PSBoundParameters
    if ( 'Template' -in $_PSBoundParameters.Keys )
    {
        return [DataONTAP.C.Types.Snapmirror.SnapmirrorInfo]::New()
    }
    if ( 'Attributes' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Attributes' )
    }
    if ( 'Expand' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Expand' )
    }
    if ( 'Source' -in $_PSBoundParameters.Keys )
    {
        #TODO: Figure out way to handle this
        $_PSBoundParameters.Remove( 'Source' )
    }
    if ( 'Destination' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Destination' )
        #TODO: Figure out way to handle this
    }
    if ( 'Controller' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Controller' )
        $_PSBoundParameters.add( 'NcController', $Controller )
    }

    New-MockNcSnapMirror @_PSBoundParameters
}

function Set-NcSnapMirror
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Snapmirror.SnapmirrorInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Schedule,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[int]]$Tries,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[long]]$MaxTransferRate,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Policy,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[bool]]$IsAutoExpandEnabled,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )

    [hashtable]$_PSBoundParameters = $PSBoundParameters
    if ( 'Source' -in $_PSBoundParameters.Keys )
    {
        #TODO: Figure out way to handle this
        $_PSBoundParameters.Remove( 'Source' )
    }
    if ( 'Destination' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Destination' )
        #TODO: Figure out way to handle this
    }
    if ( 'Controller' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Controller' )
        $_PSBoundParameters.add( 'NcController', $Controller )
    }
    New-MockNcSnapMirror @PSBoundParameters
}
function New-NcSnapMirror
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Snapmirror.SnapmirrorInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Schedule,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[int]]$Tries,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[long]]$MaxTransferRate,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Type,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Policy,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$PreserveIdentity,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[bool]]$IsAutoExpandEnabled,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )

    [hashtable]$_PSBoundParameters = $PSBoundParameters
    if ( 'Source' -in $_PSBoundParameters.Keys )
    {
        #TODO: Figure out way to handle this
        $_PSBoundParameters.Remove( 'Source' )
    }
    if ( 'Destination' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Destination' )
        #TODO: Figure out way to handle this
    }
    if ( 'Type' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Type' )
        $_PSBoundParameters.add( 'RelationshipType', $Type )
    }
    if ( 'PreserveIdentity' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'PreserveIdentity' )
        $_PSBoundParameters.add( 'IdentityPreserve', $PreserveIdentity )
    }
    if ( 'Controller' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Controller' )
        $_PSBoundParameters.add( 'NcController', $Controller )
    }

    New-MockNcSnapMirror @_PSBoundParameters
}
function Remove-NcSnapMirror
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$InfiniteVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    
    return
}

function Test-NcSnapmirrorVolume
{
    [CmdletBinding()]
    [OutputType( [DataONTAP.C.Types.Snapmirror.VolSnapmirrorStatus] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Vserver,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    
    [hashtable]$_PSBoundParameters = $PSBoundParameters

    if ( 'Controller' -in $_PSBoundParameters.Keys )
    {
        $_PSBoundParameters.Remove( 'Controller' )
        $_PSBoundParameters.Add( 'NcController', $Controller )
    }
    New-MockNcSnapmirrorVolume @_PSBoundParameters
}

function Invoke-NcSnapMirrorInitialize
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.PowerShell.SDK.Cmdlets.JobStartResult] )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[long]]$MaxTransferRate,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$TransferPriority,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$SourceSnapshot,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$Passthru,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[bool]]$IsAutoExpandEnabled,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[bool]]$IsAdaptive,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    
    if ( $Passthru )
    {
        [hashtable]$_PSBoundParameters = $PSBoundParameters

        if ( 'TransferPriority' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'TransferPriority' )
            $_PSBoundParameters.Add( 'CurrentTransferPriority', $TransferPriority )
        }
        if ( 'SourceSnapshot' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'SourceSnapshot' )
            $_PSBoundParameters.Add( 'TransferSnapshot', $SourceSnapshot )
        }
        if ( 'IsAdaptive' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'IsAdaptive' )
            #TODO: HANDLE property
        }
        if ( 'Passthru' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'Passthru' )
        }

        New-MockNcSnapmirrorVolume @_PSBoundParameters
    }
    else
    {
        New-MockNcSnapMirrorJobStart
    }
}

function Invoke-NcSnapMirrorAbort
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$ClearCheckpoint,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$CheckOnly,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$Passthru,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$InfiniteVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    if ( $Passthru )
    {
        [hashtable]$_PSBoundParameters = $PSBoundParameters
    
        if ( 'ClearCheckpoint' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'ClearCheckpoint' )
            #TODO: HANDLE property
        }
        if ( 'CheckOnly' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'CheckOnly' )
            #TODO: HANDLE property
        }
        if ( 'InfiniteVolume' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'InfiniteVolume' )
            #TODO: HANDLE property
        }
        if ( 'Passthru' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'Passthru' )
        }

        New-MockNcSnapmirrorVolume @_PSBoundParameters
    }
}
function Invoke-NcSnapMirrorBreak
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$Passthru,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$RestoreDestinationSnapshot,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$InfiniteVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$Recover,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    
    if ( $Passthru )
    {
        [hashtable]$_PSBoundParameters = $PSBoundParameters
    
        if ( 'RestoreDestinationSnapshot' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'RestoreDestinationSnapshot' )
            #TODO: HANDLE property
        }
        if ( 'Recover' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'Recover' )
            #TODO: HANDLE property
        }
        if ( 'InfiniteVolume' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'InfiniteVolume' )
            #TODO: HANDLE property
        }
        if ( 'Passthru' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'Passthru' )
        }

        New-MockNcSnapmirrorVolume @_PSBoundParameters
    }
}

function Invoke-NcSnapMirrorUpdate
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.PowerShell.SDK.Cmdlets.JobStartResult] )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$SourceSnapshot,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$TransferPriority,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[long]]$MaxTransferRate,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$EnableStorageEfficiency,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$Passthru,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    
    if ( $Passthru )
    {
        [hashtable]$_PSBoundParameters = $PSBoundParameters

        if ( 'TransferPriority' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'TransferPriority' )
            $_PSBoundParameters.Add( 'CurrentTransferPriority', $TransferPriority )
        }
        if ( 'SourceSnapshot' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'SourceSnapshot' )
            $_PSBoundParameters.Add( 'TransferSnapshot', $SourceSnapshot )
        }

        if ( 'Passthru' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'Passthru' )
        }
        if ( 'EnableStorageEfficiency' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'EnableStorageEfficiency' )
            #TODO: HANDLE property
        }

        New-MockNcSnapmirrorVolume @_PSBoundParameters
    }
    else
    {
        New-MockNcSnapMirrorJobStart
    }
}
function Invoke-NcSnapmirrorQuiesce
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$Passthru,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Snapmirror.SnapmirrorInfo]$Query,
        [Parameter( ParameterSetName = 'ByQuery' )]
        [switch]$ContinueOnFailure,
        [Parameter( ParameterSetName = 'ByQuery' )]
        [System.Nullable[int]]$MaxFailureCount,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    
    if ( $Passthru )
    {
        [hashtable]$_PSBoundParameters = $PSBoundParameters

        if ( 'Passthru' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'Passthru' )
        }

        New-MockNcSnapmirrorVolume @_PSBoundParameters
    }
    else
    {
        New-MockNcSnapMirrorJobStart
    }
}
function Invoke-NcSnapmirrorResume
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$Passthru,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Snapmirror.SnapmirrorInfo]$Query,
        [Parameter( ParameterSetName = 'ByQuery' )]
        [switch]$ContinueOnFailure,
        [Parameter( ParameterSetName = 'ByQuery' )]
        [System.Nullable[int]]$MaxFailureCount,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    
    if ( $Passthru )
    {
        [hashtable]$_PSBoundParameters = $PSBoundParameters

        if ( 'Passthru' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'Passthru' )
        }

        New-MockNcSnapmirrorVolume @_PSBoundParameters
    }
    else
    {
        New-MockNcSnapMirrorJobStart
    }
}

function Invoke-NcSnapmirrorResync
{
    [CmdletBinding( DefaultParameterSetName = 'ByPathElement', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.PowerShell.SDK.Cmdlets.JobStartResult] )]
    param(
        [Parameter( ParameterSetName = 'ByPath', Mandatory )]
        [string]$Destination,
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$Source,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$DestinationCluster,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVserver,
        [Parameter( ParameterSetName = 'ByPathElement', Mandatory )]
        [string]$DestinationVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceCluster,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVserver,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [string]$SourceVolume,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[long]]$MaxTransferRate,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [string]$SourceSnapshot,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$Preserve,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$Passthru,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [switch]$QuickResync,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[bool]]$IsAutoExpandEnabled,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [System.Nullable[bool]]$IsAdaptive,
        [Parameter( ParameterSetName = 'ByPathElement' )]
        [Parameter( ParameterSetName = 'ByPath' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    
    if ( $Passthru )
    {
        [hashtable]$_PSBoundParameters = $PSBoundParameters

        if ( 'SourceSnapshot' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'SourceSnapshot' )
            $_PSBoundParameters.Add( 'TransferSnapshot', $SourceSnapshot )
        }
        if ( 'Preserve' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'Preserve' )
            $_PSBoundParameters.Add( 'IdentityPreserve', $true )
        }
        if ( 'IsAdaptive' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'IsAdaptive' )
            #TODO: HANDLE property
        }
        if ( 'Passthru' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'Passthru' )
        }
        if ( 'QuickResync' -in $_PSBoundParameters.Keys )
        {
            $_PSBoundParameters.Remove( 'QuickResync' )
        }

        New-MockNcSnapmirrorVolume @_PSBoundParameters
    }
    else
    {
        New-MockNcSnapMirrorJobStart
    }
}