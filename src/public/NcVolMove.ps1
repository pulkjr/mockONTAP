function New-MockNcVolMove
{
    param(
        $ActualCompletionTimestamp,
        $ActualCompletionTimestampDT,
        $ActualCompletionTimestampSpecified = $false,
        $ActualDuration = '5',
        $ActualDurationSpecified = $true,
        $BypassThrottling = $false,
        $BypassThrottlingSpecified = $true,
        $BytesRemaining,
        $BytesRemainingSpecified = $false,
        $BytesSent,
        $BytesSentSpecified = $false,
        $CompletionCode,
        $CompletionCodeSpecified = $false,
        $CompletionStatus,
        $CutoverAction = 'retry_on_failure',
        $CutoverAttemptedCount = '0',
        $CutoverAttemptedCountSpecified = $true,
        $CutoverAttempts = '3',
        $CutoverAttemptsSpecified = $true,
        $CutoverHardDeferredCount = '0',
        $CutoverHardDeferredCountSpecified = $true,
        $CutoversSoftDeferredCount = '0',
        $CutoversSoftDeferredCountSpecified = $true,
        $CutoverTriggerTimestamp,
        $CutoverTriggerTimestampDT,
        $CutoverTriggerTimestampSpecified = $false,
        $CutoverWindow = '30',
        $CutoverWindowSpecified = $true,
        $CutoverWindowTS = '00:00:30',
        $DestinationAggregate = 'nc01e_aggr0_sata_2t',
        $DestinationKeyId,
        $DestinationNode = 'cluster01-02',
        $Details = 'Volume move job preparing transfer',
        $EstimatedCompletionTime,
        $EstimatedCompletionTimeDT,
        $EstimatedCompletionTimeSpecified = $false,
        $EstimatedRemainingDuration,
        $EstimatedRemainingDurationSpecified = $false,
        $ExecutionProgress = 'Volume move job preparing transfer',
        $InternalState = 'PrepareTransfer',
        $IsDestinationEncrypted = $false,
        $IsDestinationEncryptedSpecified = $true,
        $IsSourceEncrypted = $false,
        $IsSourceEncryptedSpecified = $true,
        $JobId = '21360',
        $JobIdSpecified = $true,
        $JobUuid = 'f9e1abe3-6a10-11ea-a82e-00a098bf3e9c',
        $LastCutoverTriggerTimestamp,
        $LastCutoverTriggerTimestampDT,
        $LastCutoverTriggerTimestampSpecified = $false,
        $ManagingNode = 'cluster01-01',
        $MovedByAutobalance = $false,
        $MovedByAutobalanceSpecified = $true,
        $NcController,
        $OriginalJobId,
        $OriginalJobIdSpecified = $false,
        $PercentComplete,
        $PercentCompleteSpecified = $false,
        $Phase = 'replicating',
        $PriorIssues,
        $ReplicationThroughput,
        $SkipDeltaCalculation = $false,
        $SkipDeltaCalculationSpecified = $true,
        $SourceAggregate = 'nc01a_aggr0_sp_6t',
        $SourceKeyId,
        $SourceNode = 'dmcisdninc01a',
        $StartTimestamp = '1584643173',
        $StartTimestampDT,
        $StartTimestampSpecified = $true,
        $State = 'healthy',
        $Volume = 'vol0',
        $VolumeInstanceUuid = '64fc1a89-4b71-40e4-944b-4604f6fc962a',
        $Vserver = 'cifsSVM'
    )
    $returnObj = [DataONTAP.C.Types.Volume.VolumeMoveInfo]::New()
    $returnObj.ActualCompletionTimestamp = $ActualCompletionTimestamp
    $returnObj.ActualCompletionTimestampDT = $ActualCompletionTimestampDT
    $returnObj.ActualCompletionTimestampSpecified = $ActualCompletionTimestampSpecified
    $returnObj.ActualDuration = $ActualDuration
    $returnObj.ActualDurationSpecified = $ActualDurationSpecified
    $returnObj.BypassThrottling = $BypassThrottling
    $returnObj.BypassThrottlingSpecified = $BypassThrottlingSpecified
    $returnObj.BytesRemaining = $BytesRemaining
    $returnObj.BytesRemainingSpecified = $BytesRemainingSpecified
    $returnObj.BytesSent = $BytesSent
    $returnObj.BytesSentSpecified = $BytesSentSpecified
    $returnObj.CompletionCode = $CompletionCode
    $returnObj.CompletionCodeSpecified = $CompletionCodeSpecified
    $returnObj.CompletionStatus = $CompletionStatus
    $returnObj.CutoverAction = $CutoverAction
    $returnObj.CutoverAttemptedCount = $CutoverAttemptedCount
    $returnObj.CutoverAttemptedCountSpecified = $CutoverAttemptedCountSpecified
    $returnObj.CutoverAttempts = $CutoverAttempts
    $returnObj.CutoverAttemptsSpecified = $CutoverAttemptsSpecified
    $returnObj.CutoverHardDeferredCount = $CutoverHardDeferredCount
    $returnObj.CutoverHardDeferredCountSpecified = $CutoverHardDeferredCountSpecified
    $returnObj.CutoversSoftDeferredCount = $CutoversSoftDeferredCount
    $returnObj.CutoversSoftDeferredCountSpecified = $CutoversSoftDeferredCountSpecified
    $returnObj.CutoverTriggerTimestamp = $CutoverTriggerTimestamp
    $returnObj.CutoverTriggerTimestampDT = $CutoverTriggerTimestampDT
    $returnObj.CutoverTriggerTimestampSpecified = $CutoverTriggerTimestampSpecified
    $returnObj.CutoverWindow = $CutoverWindow
    $returnObj.CutoverWindowSpecified = $CutoverWindowSpecified
    $returnObj.CutoverWindowTS = $CutoverWindowTS
    $returnObj.DestinationAggregate = $DestinationAggregate
    $returnObj.DestinationKeyId = $DestinationKeyId
    $returnObj.DestinationNode = $DestinationNode
    $returnObj.Details = $Details
    $returnObj.EstimatedCompletionTime = $EstimatedCompletionTime
    $returnObj.EstimatedCompletionTimeDT = $EstimatedCompletionTimeDT
    $returnObj.EstimatedCompletionTimeSpecified = $EstimatedCompletionTimeSpecified
    $returnObj.EstimatedRemainingDuration = $EstimatedRemainingDuration
    $returnObj.EstimatedRemainingDurationSpecified = $EstimatedRemainingDurationSpecified
    $returnObj.ExecutionProgress = $ExecutionProgress
    $returnObj.InternalState = $InternalState
    $returnObj.IsDestinationEncrypted = $IsDestinationEncrypted
    $returnObj.IsDestinationEncryptedSpecified = $IsDestinationEncryptedSpecified
    $returnObj.IsSourceEncrypted = $IsSourceEncrypted
    $returnObj.IsSourceEncryptedSpecified = $IsSourceEncryptedSpecified
    $returnObj.JobId = $JobId
    $returnObj.JobIdSpecified = $JobIdSpecified
    $returnObj.JobUuid = $JobUuid
    $returnObj.LastCutoverTriggerTimestamp = $LastCutoverTriggerTimestamp
    $returnObj.LastCutoverTriggerTimestampDT = $LastCutoverTriggerTimestampDT
    $returnObj.LastCutoverTriggerTimestampSpecified = $LastCutoverTriggerTimestampSpecified
    $returnObj.ManagingNode = $ManagingNode
    $returnObj.MovedByAutobalance = $MovedByAutobalance
    $returnObj.MovedByAutobalanceSpecified = $MovedByAutobalanceSpecified
    $returnObj.NcController = $NcController
    $returnObj.OriginalJobId = $OriginalJobId
    $returnObj.OriginalJobIdSpecified = $OriginalJobIdSpecified
    $returnObj.PercentComplete = $PercentComplete
    $returnObj.PercentCompleteSpecified = $PercentCompleteSpecified
    $returnObj.Phase = $Phase
    $returnObj.PriorIssues = $PriorIssues
    $returnObj.ReplicationThroughput = $ReplicationThroughput
    $returnObj.SkipDeltaCalculation = $SkipDeltaCalculation
    $returnObj.SkipDeltaCalculationSpecified = $SkipDeltaCalculationSpecified
    $returnObj.SourceAggregate = $SourceAggregate
    $returnObj.SourceKeyId = $SourceKeyId
    $returnObj.SourceNode = $SourceNode
    $returnObj.StartTimestamp = $StartTimestamp
    $returnObj.StartTimestampDT = $StartTimestampDT
    $returnObj.StartTimestampSpecified = $StartTimestampSpecified
    $returnObj.State = $State
    $returnObj.Volume = $Volume
    $returnObj.VolumeInstanceUuid = $VolumeInstanceUuid
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function Get-NcVolMove
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Volume.VolumeMoveInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string] 
        $Name,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]
        $Vserver,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch ]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Volume.VolumeMoveInfo]
        $Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Volume.VolumeMoveInfo]
        $Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )
    New-MockNcVolMove -Volume $Name -Vserver $Vserver -NcController $Controller
}
function Start-NcVolMove
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.PowerShell.SDK.Cmdlets.JobStartResult] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]
        $Name,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]
        $DestinationAggregate,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]
        $Vserver,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [int]
        $CutoverWindow,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [int]
        $CutoverAttempts,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]
        $CutoverAction,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]
        $ValidateOnly,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]
        $EncryptDestination,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]
        $DecryptDestination,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]
        $GenerateDestinationKey,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]
        $TieringPolicy,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]
        $AllowMixedAggrTypes,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )
    New-MockNcVolMove -Volume $Name -Vserver $Vserver -NcController $Controller -DestinationAggregate $DestinationAggregate
}