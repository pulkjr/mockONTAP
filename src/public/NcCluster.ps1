function New-MockNcStorageFailoverInfo
{
    param(
        $AutoGivebackEnabled = $true,
        $GivebackState = 'nothing_to_gb',
        $NcController,
        $Controller,
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
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
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
        $Template,
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
function New-MockNcCluster
{
    param(
        $ClusterContact = '',
        $ClusterLocation = 'Hungry',
        $ClusterName = 'cluster01',
        $ClusterSerialNumber = '1-80-123456',
        $ClusterUuid = '8887b75b-4794-11e8-ae95-00a098bf3e9a',
        $NcController,
        $RdbUuid = '8887f259-4794-11e8-ae95-00a098bf3e9d'
    )
    $returnObj = [DataONTAP.C.Types.Cluster.ClusterIdentityInfo]::New()
    $returnObj.ClusterContact = $ClusterContact
    $returnObj.ClusterLocation = $ClusterLocation
    $returnObj.ClusterName = $ClusterName
    $returnObj.ClusterSerialNumber = $ClusterSerialNumber
    $returnObj.ClusterUuid = $ClusterUuid
    $returnObj.NcController = $NcController
    $returnObj.RdbUuid = $RdbUuid
    return $returnObj
}
function Get-NcCluster
{
    [CmdletBinding()]
    [OutputType( [DataONTAP.C.Types.Cluster.ClusterIdentityInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController] $Controller
    )
    New-MockNcCluster -NcController $Controller
}
function New-MockNcClusterPeer
{
    param(
        $ActiveAddresses,
        $ActiveEncrypt,
        $AddressFamily = 'ipv4',
        $AuthStatusAdmin = 'use_authentication',
        $AuthStatusOperational = 'ok',
        $Availability = 'available',
        $ClusterName = 'cluster01',
        $ClusterUuid = '53dd0e0e-f950-11e2-9656-123478563412',
        $DarkEncrypt,
        $Encrypt = 'never',
        $EncryptionProtocol,
        $EncryptionProtocolProposed,
        $IpspaceName = 'Default',
        $IsClusterHealthy,
        $IsClusterHealthySpecified = 'False',
        $LastUpdated,
        $NcController,
        $PeerAddresses,
        $RemoteClusterName = 'Cluster02',
        $RemoteClusterNodes,
        $RpcConnectTimeout = '10',
        $RpcConnectTimeoutSpecified = 'True',
        $SerialNumber = '1-80-000091',
        $Timeout = '60',
        $TimeoutSpecified = 'True',
        $UnreachableLocalNodes,
        $UpdatePingTimeout = '5',
        $UpdatePingTimeoutSpecified = 'True'
    )
    $returnObj = [DataONTAP.C.Types.ClusterPeer.ClusterPeerInfo]::New()
    $returnObj.ActiveAddresses = $ActiveAddresses
    $returnObj.ActiveEncrypt = $ActiveEncrypt
    $returnObj.AddressFamily = $AddressFamily
    $returnObj.AuthStatusAdmin = $AuthStatusAdmin
    $returnObj.AuthStatusOperational = $AuthStatusOperational
    $returnObj.Availability = $Availability
    $returnObj.ClusterName = $ClusterName
    $returnObj.ClusterUuid = $ClusterUuid
    $returnObj.DarkEncrypt = $DarkEncrypt
    $returnObj.Encrypt = $Encrypt
    $returnObj.EncryptionProtocol = $EncryptionProtocol
    $returnObj.EncryptionProtocolProposed = $EncryptionProtocolProposed
    $returnObj.IpspaceName = $IpspaceName
    $returnObj.IsClusterHealthy = $IsClusterHealthy
    $returnObj.IsClusterHealthySpecified = $IsClusterHealthySpecified
    $returnObj.LastUpdated = $LastUpdated
    $returnObj.NcController = $NcController
    $returnObj.PeerAddresses = $PeerAddresses
    $returnObj.RemoteClusterName = $RemoteClusterName
    $returnObj.RemoteClusterNodes = $RemoteClusterNodes
    $returnObj.RpcConnectTimeout = $RpcConnectTimeout
    $returnObj.RpcConnectTimeoutSpecified = $RpcConnectTimeoutSpecified
    $returnObj.SerialNumber = $SerialNumber
    $returnObj.Timeout = $Timeout
    $returnObj.TimeoutSpecified = $TimeoutSpecified
    $returnObj.UnreachableLocalNodes = $UnreachableLocalNodes
    $returnObj.UpdatePingTimeout = $UpdatePingTimeout
    $returnObj.UpdatePingTimeoutSpecified = $UpdatePingTimeoutSpecified
    return $returnObj
}
function Get-NcClusterPeer
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.ClusterPeer.ClusterPeerInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Name,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Address,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Availability,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.ClusterPeer.ClusterPeerInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.ClusterPeer.ClusterPeerInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    New-MockNcClusterPeer -ClusterName $Name -PeerAddresses $Address -Availability $Availability
}