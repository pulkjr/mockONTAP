function New-MockNcStorageFailoverInfo
{
    param(
        $AutoGivebackEnabled = $true,
        $GivebackState = 'nothing_to_gb',
        $NcController,
        $Node = 'cluster01-01',
        $NodeState = 'connected',
        $PartnerName = 'cluster01-02',
        $SfoGivebackInfo,
        $SfoInterconnectInfo,
        $SfoNodeInfo,
        $SfoOptionsInfo,
        $SfoStorageInfo,
        $SfoTakeoverInfo,
        $TakeoverEnabled = $true,
        $TakeoverState = 'not_in_takeover'
    )
    $returnObj = [DataONTAP.C.Types.Cf.StorageFailoverInfo]::New()
    $returnObj.AutoGivebackEnabled = $AutoGivebackEnabled
    $returnObj.GivebackState = $GivebackState
    $returnObj.NcController = $NcController
    $returnObj.Node = $Node
    $returnObj.NodeState = $NodeState
    $returnObj.PartnerName = $PartnerName
    $returnObj.TakeoverEnabled = $TakeoverEnabled
    $returnObj.TakeoverState = $TakeoverState
    return $returnObj
}
function Get-NcClusterHaInfo
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Cf.StorageFailoverInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Node,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch]$Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Cf.StorageFailoverInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Cf.StorageFailoverInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcStorageFailoverInfo
}