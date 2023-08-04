function New-MockNcFcpAdapter
{
    param(
        $Adapter = '0e',
        $CacheLineSize,
        $CacheLineSizeSpecified = $false,
        $ConnectionEstablished = 'ptp',
        $DataLinkRate = '4',
        $DataLinkRateSpecified = $true,
        $ExternalGbicEnabled,
        $ExternalGbicEnabledSpecified = $false,
        $FabricEstablished = $true,
        $FabricEstablishedSpecified = $true,
        $FabricName = '10:00:00:05:1e:f1:0c:b0',
        $FirmwareRev = '8.1.0',
        $HardwareRev = '2',
        $InfoName = 'Fibre Channel Target Adapter 0e (QLogic 8324 (8362), rev. 2, 16G)',
        $IsSfpDiagnosticsInternallyCalibrated = $true,
        $IsSfpDiagnosticsInternallyCalibratedSpecified = $true,
        $IsSfpOpticalTransceiverValid = $true,
        $IsSfpOpticalTransceiverValidSpecified = $true,
        $IsSfpRxPowerInRange = $true,
        $IsSfpRxPowerInRangeSpecified = $true,
        $IsSfpTxPowerInRange = $true,
        $IsSfpTxPowerInRangeSpecified = $true,
        $MaxSpeed = '16',
        $MaxSpeedSpecified = $true,
        $MediaType = 'ptp',
        $MpiFirmwareRev,
        $NcController,
        $node = 'cluster01-01',
        $NodeName = '50:0a:09:80:80:13:b9:6d',
        $PacketSize,
        $PacketSizeSpecified = $false,
        $PciBusWidth,
        $PciBusWidthSpecified = $false,
        $PciClockSpeed,
        $PciClockSpeedSpecified = $false,
        $PhyFirmwareRev,
        $PhysicalDataLinkRate,
        $PhysicalDataLinkRateSpecified = $false,
        $PhysicalLinkState,
        $PhysicalProtocol = 'fibre_channel',
        $PortAddress = '295552',
        $PortAddressSpecified = $true,
        $PortName = '50:0a:09:84:80:13:b9:6d',
        $PreloadTableRev,
        $SfpConnector = 'LC',
        $SfpDateCode = '17:10:20',
        $SfpEncoding = '64B66B',
        $SfpFcSpeedcapabilities = '4,8,16 (Gbit/sec)',
        $SfpFormfactor = 'SFP',
        $SfpPartNumber = 'AFBR-57F5MZ-NA1',
        $SfpRev = '01',
        $SfpRxPower = '371.4 (uWatts)',
        $SfpSerialNumber = 'AC1742J00Z6',
        $SfpTxPower = '579.0 (uWatts)',
        $SfpVendorName = 'AVAGO',
        $SfpVendorOui = '0:23:106',
        $SfpWavelength = '850',
        $SfpWavelengthSpecified = $true,
        $Speed = 'auto',
        $SramParityEnabled,
        $SramParityEnabledSpecified = $false,
        $State = 'online',
        $StatusAdmin,
        $StatusExtended,
        $SwitchPort = 'mo-b48000-top:266',
        $VlanId,
        $VlanIdSpecified = $false,
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Fcp.FcpConfigAdapterInfo]::New()
    $returnObj.Adapter = $Adapter
    $returnObj.CacheLineSize = $CacheLineSize
    $returnObj.CacheLineSizeSpecified = $CacheLineSizeSpecified
    $returnObj.ConnectionEstablished = $ConnectionEstablished
    $returnObj.DataLinkRate = $DataLinkRate
    $returnObj.DataLinkRateSpecified = $DataLinkRateSpecified
    $returnObj.ExternalGbicEnabled = $ExternalGbicEnabled
    $returnObj.ExternalGbicEnabledSpecified = $ExternalGbicEnabledSpecified
    $returnObj.FabricEstablished = $FabricEstablished
    $returnObj.FabricEstablishedSpecified = $FabricEstablishedSpecified
    $returnObj.FabricName = $FabricName
    $returnObj.FirmwareRev = $FirmwareRev
    $returnObj.HardwareRev = $HardwareRev
    $returnObj.InfoName = $InfoName
    $returnObj.IsSfpDiagnosticsInternallyCalibrated = $IsSfpDiagnosticsInternallyCalibrated
    $returnObj.IsSfpDiagnosticsInternallyCalibratedSpecified = $IsSfpDiagnosticsInternallyCalibratedSpecified
    $returnObj.IsSfpOpticalTransceiverValid = $IsSfpOpticalTransceiverValid
    $returnObj.IsSfpOpticalTransceiverValidSpecified = $IsSfpOpticalTransceiverValidSpecified
    $returnObj.IsSfpRxPowerInRange = $IsSfpRxPowerInRange
    $returnObj.IsSfpRxPowerInRangeSpecified = $IsSfpRxPowerInRangeSpecified
    $returnObj.IsSfpTxPowerInRange = $IsSfpTxPowerInRange
    $returnObj.IsSfpTxPowerInRangeSpecified = $IsSfpTxPowerInRangeSpecified
    $returnObj.MaxSpeed = $MaxSpeed
    $returnObj.MaxSpeedSpecified = $MaxSpeedSpecified
    $returnObj.MediaType = $MediaType
    $returnObj.MpiFirmwareRev = $MpiFirmwareRev
    $returnObj.NcController = $NcController
    $returnObj.Node = $Node
    $returnObj.NodeName = $NodeName
    $returnObj.PacketSize = $PacketSize
    $returnObj.PacketSizeSpecified = $PacketSizeSpecified
    $returnObj.PciBusWidth = $PciBusWidth
    $returnObj.PciBusWidthSpecified = $PciBusWidthSpecified
    $returnObj.PciClockSpeed = $PciClockSpeed
    $returnObj.PciClockSpeedSpecified = $PciClockSpeedSpecified
    $returnObj.PhyFirmwareRev = $PhyFirmwareRev
    $returnObj.PhysicalDataLinkRate = $PhysicalDataLinkRate
    $returnObj.PhysicalDataLinkRateSpecified = $PhysicalDataLinkRateSpecified
    $returnObj.PhysicalLinkState = $PhysicalLinkState
    $returnObj.PhysicalProtocol = $PhysicalProtocol
    $returnObj.PortAddress = $PortAddress
    $returnObj.PortAddressSpecified = $PortAddressSpecified
    $returnObj.PortName = $PortName
    $returnObj.PreloadTableRev = $PreloadTableRev
    $returnObj.SfpConnector = $SfpConnector
    $returnObj.SfpDateCode = $SfpDateCode
    $returnObj.SfpEncoding = $SfpEncoding
    $returnObj.SfpFcSpeedcapabilities = $SfpFcSpeedcapabilities
    $returnObj.SfpFormfactor = $SfpFormfactor
    $returnObj.SfpPartNumber = $SfpPartNumber
    $returnObj.SfpRev = $SfpRev
    $returnObj.SfpRxPower = $SfpRxPower
    $returnObj.SfpSerialNumber = $SfpSerialNumber
    $returnObj.SfpTxPower = $SfpTxPower
    $returnObj.SfpVendorName = $SfpVendorName
    $returnObj.SfpVendorOui = $SfpVendorOui
    $returnObj.SfpWavelength = $SfpWavelength
    $returnObj.SfpWavelengthSpecified = $SfpWavelengthSpecified
    $returnObj.Speed = $Speed
    $returnObj.SramParityEnabled = $SramParityEnabled
    $returnObj.SramParityEnabledSpecified = $SramParityEnabledSpecified
    $returnObj.State = $State
    $returnObj.StatusAdmin = $StatusAdmin
    $returnObj.StatusExtended = $StatusExtended
    $returnObj.SwitchPort = $SwitchPort
    $returnObj.VlanId = $VlanId
    $returnObj.VlanIdSpecified = $VlanIdSpecified
    return $returnObj
}
function New-MockNcFcpAdapterStatsInfo
{
    param(
        $Adapter = '0e',
        $AdapterResets = '0',
        $CrcErrors = '0',
        $DiscardedFrames = '0',
        $FrameOverruns = '0',
        $FrameUnderruns = '0',
        $InitiatorsConnected = '79',
        $InvalidXmitWords = '0',
        $IsSfpDiagnosticsInternallyCalibrated = $true,
        $IsSfpDiagnosticsInternallyCalibratedSpecified = $true,
        $IsSfpOpticalTransceiverValid = $true,
        $IsSfpOpticalTransceiverValidSpecified = $true,
        $IsSfpRxPowerInRange = $true,
        $IsSfpRxPowerInRangeSpecified = $true,
        $IsSfpTxPowerInRange = $true,
        $IsSfpTxPowerInRangeSpecified = $true,
        $LinkBreaks = '0',
        $LipResets = '0',
        $LrReceived = '0',
        $LrSent = '0',
        $NcController,
        $node = 'cluster01-01',
        $NosReceived = '0',
        $OlsReceived = '1',
        $ProtocolErrors = '0',
        $QueueDepth = '2048',
        $ScsiRequestsDropped = '12',
        $SfpConnector = 'LC',
        $SfpDateCode = '17:10:20',
        $SfpEncoding = '64B66B',
        $SfpFcSpeedcapabilities = '4,8,16 (Gbit/sec)',
        $SfpFcSpeedCapabilties,
        $SfpFormfactor = 'SFP',
        $SfpPartNumber = 'AFBR-57F5MZ-NA1',
        $SfpRev = '01',
        $SfpRxPower = '364.8 (uWatts)',
        $SfpSerialNumber = 'AC1742J00YW',
        $SfpTxPower = '568.0 (uWatts)',
        $SfpVendorName = 'AVAGO',
        $SfpVendorOui = '0:23:106',
        $SfpWavelength = '850',
        $SfpWavelengthSpecified = $true,
        $SpuriousInterrupts = '0',
        $TotalLogins = '1119',
        $TotalLogouts = '1040',
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Fcp.FcpAdapterStatsInfo]::New()
    $returnObj.Adapter = $Adapter
    $returnObj.AdapterResets = $AdapterResets
    $returnObj.CrcErrors = $CrcErrors
    $returnObj.DiscardedFrames = $DiscardedFrames
    $returnObj.FrameOverruns = $FrameOverruns
    $returnObj.FrameUnderruns = $FrameUnderruns
    $returnObj.InitiatorsConnected = $InitiatorsConnected
    $returnObj.InvalidXmitWords = $InvalidXmitWords
    $returnObj.IsSfpDiagnosticsInternallyCalibrated = $IsSfpDiagnosticsInternallyCalibrated
    $returnObj.IsSfpDiagnosticsInternallyCalibratedSpecified = $IsSfpDiagnosticsInternallyCalibratedSpecified
    $returnObj.IsSfpOpticalTransceiverValid = $IsSfpOpticalTransceiverValid
    $returnObj.IsSfpOpticalTransceiverValidSpecified = $IsSfpOpticalTransceiverValidSpecified
    $returnObj.IsSfpRxPowerInRange = $IsSfpRxPowerInRange
    $returnObj.IsSfpRxPowerInRangeSpecified = $IsSfpRxPowerInRangeSpecified
    $returnObj.IsSfpTxPowerInRange = $IsSfpTxPowerInRange
    $returnObj.IsSfpTxPowerInRangeSpecified = $IsSfpTxPowerInRangeSpecified
    $returnObj.LinkBreaks = $LinkBreaks
    $returnObj.LipResets = $LipResets
    $returnObj.LrReceived = $LrReceived
    $returnObj.LrSent = $LrSent
    $returnObj.NcController = $NcController
    $returnObj.Node = $Node
    $returnObj.NosReceived = $NosReceived
    $returnObj.OlsReceived = $OlsReceived
    $returnObj.ProtocolErrors = $ProtocolErrors
    $returnObj.QueueDepth = $QueueDepth
    $returnObj.ScsiRequestsDropped = $ScsiRequestsDropped
    $returnObj.SfpConnector = $SfpConnector
    $returnObj.SfpDateCode = $SfpDateCode
    $returnObj.SfpEncoding = $SfpEncoding
    $returnObj.SfpFcSpeedcapabilities = $SfpFcSpeedcapabilities
    $returnObj.SfpFcSpeedCapabilties = $SfpFcSpeedCapabilties
    $returnObj.SfpFormfactor = $SfpFormfactor
    $returnObj.SfpPartNumber = $SfpPartNumber
    $returnObj.SfpRev = $SfpRev
    $returnObj.SfpRxPower = $SfpRxPower
    $returnObj.SfpSerialNumber = $SfpSerialNumber
    $returnObj.SfpTxPower = $SfpTxPower
    $returnObj.SfpVendorName = $SfpVendorName
    $returnObj.SfpVendorOui = $SfpVendorOui
    $returnObj.SfpWavelength = $SfpWavelength
    $returnObj.SfpWavelengthSpecified = $SfpWavelengthSpecified
    $returnObj.SpuriousInterrupts = $SpuriousInterrupts
    $returnObj.TotalLogins = $TotalLogins
    $returnObj.TotalLogouts = $TotalLogouts
    return $returnObj
}
function New-MockNcFcpService
{
    param(
        $IsAvailable = $true,
        $IsAvailableSpecified = $true,
        $NcController,
        $NodeName = '20:00:00:a0:98:bf:3e:9b',
        $Vserver = 'Svm01',
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Fcp.FcpServiceInfo]::New()
    $returnObj.IsAvailable = $IsAvailable
    $returnObj.IsAvailableSpecified = $IsAvailableSpecified
    $returnObj.NcController = $NcController
    $returnObj.NodeName = $NodeName
    $returnObj.Vserver = $Vserver
    return $returnObj
}

function New-MockNcFcpInterfaceInfo
{
    param(
        $CurrentNode = 'cluster01-01',
        $CurrentPort = '0e',
        $InterfaceName = 'fc01',
        $NcController,
        $NodeName = '20:05:00:a0:98:bf:3e:9b',
        $PortAddress = '295557',
        $PortName = '24:01:00:a0:98:11:70:01',
        $RelativePortId = '1',
        $RelativePortIdSpecified = $true,
        $Vserver = 'svm01',
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Fcp.FcpInterfaceInfo]::New()
    $returnObj.CurrentNode = $CurrentNode
    $returnObj.CurrentPort = $CurrentPort
    $returnObj.InterfaceName = $InterfaceName
    $returnObj.NcController = $NcController
    $returnObj.NodeName = $NodeName
    $returnObj.PortAddress = $PortAddress
    $returnObj.PortName = $PortName
    $returnObj.RelativePortId = $RelativePortId
    $returnObj.RelativePortIdSpecified = $RelativePortIdSpecified
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function New-MockNcFcpAdapterInitiatorsInfo
{
    param(
        $Adapter = 'fc01',
        $FcpConnectedInitiators,
        $NcController,
        $Vserver = 'svm01',
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Fcp.FcpAdapterInitiatorsInfo]::New()
    $returnObj.Adapter = $Adapter
    $returnObj.FcpConnectedInitiators = [DataONTAP.C.Types.Fcp.FcpConnectedInitiatorInfo]::New()
    $returnObj.NcController = $NcController
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function New-MockNcFcpNodeName
{
    param(
        $Name = '20:01:00:a0:98:bf:3e:9b',
        $NcController,
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Fcp.NodeName]::New()
    $returnObj.Name = $Name
    $returnObj.NcController = $NcController
    return $returnObj
}
function New-MockNcFcpPingIgroupStatusInfo
{
    param(
        $ExtStatus = 'wwpn_logged_in',
        $Igroup = 'fcpIgroup',
        $Lif = 'fc01',
        $NcController,
        $node = 'cluster01-01',
        $Portset = 'fcpPortset01',
        $Status = 'reachable',
        $Vserver = 'svm01',
        $Wwpn = '10:00:00:90:fa:37:14:38',
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Fcp.FcpPingIgroupStatusInfo]::New()
    $returnObj.ExtStatus = $ExtStatus
    $returnObj.Igroup = $Igroup
    $returnObj.Lif = $Lif
    $returnObj.NcController = $NcController
    $returnObj.Node = $Node
    $returnObj.Portset = $Portset
    $returnObj.Status = $Status
    $returnObj.Vserver = $Vserver
    $returnObj.Wwpn = $Wwpn
    return $returnObj
}
function New-MockNcFcpPingStatusInfo
{
    param(
        $ExtStatus = 'wwpn_logged_in',
        $Lif = 'fc01',
        $NcController,
        $Node = 'cluster01-01',
        $Status = 'reachable',
        $Vserver = 'svm01',
        $Wwpn = '10:00:00:90:fa:37:14:38',
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Fcp.FcpPingStatusInfo]::New()
    $returnObj.ExtStatus = $ExtStatus
    $returnObj.Lif = $Lif
    $returnObj.NcController = $NcController
    $returnObj.Node = $Node
    $returnObj.Status = $Status
    $returnObj.Vserver = $Vserver
    $returnObj.Wwpn = $Wwpn
    return $returnObj
}
function Add-NcFcpService
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpServiceInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$NodeName,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Force,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Disable,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpService
}
function Clear-NcFcpPortNameAlias
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = 'ByWwpn' )]
        [string]$Wwpn,
        [Parameter( ParameterSetName = 'ByAlias' )]
        [string]$Alias,
        [Parameter( ParameterSetName = 'ByWwpn' )]
        [Parameter( ParameterSetName = 'ByAlias' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByWwpn' )]
        [Parameter( ParameterSetName = 'ByAlias' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}
function Disable-NcFcp
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}
function Disable-NcFcpAdapter
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpConfigAdapterInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Node,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Adapter,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpAdapter
}
function Enable-NcFcp
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}
function Enable-NcFcpAdapter
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpConfigAdapterInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Node,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Adapter,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpAdapter
}
function Get-NcFcpAdapter
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpConfigAdapterInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Node,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Adapter,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$NodeName,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpConfigAdapterInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpConfigAdapterInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpAdapter
}
function Get-NcFcpAdapterStatistics
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpAdapterStatsInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Adapter,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpAdapterStatsInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpAdapterStatsInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpAdapterStatsInfo
}
function Get-NcFcpInitiator
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpAdapterInitiatorsInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Adapter,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpAdapterInitiatorsInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpAdapterInitiatorsInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpAdapterInitiatorsInfo
}
function Get-NcFcpInterface
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpInterfaceInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Interface,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Node,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpInterfaceInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpInterfaceInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpInterfaceInfo
}
function Get-NcFcpNameserver
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpNameserverInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Lif,
        [Parameter( ParameterSetName = 'ByName' )]
        [System.Nullable[long]]$PortId,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpNameserverInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpNameserverInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    #TODO: Add call to mock
}
function Get-NcFcpNodeName
{
    [CmdletBinding()]
    [OutputType( [DataONTAP.C.Types.Fcp.NodeName] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Raw,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpNodeName
}
function Get-NcFcportLinkState
{
    [CmdletBinding()]
    [OutputType( [DataONTAP.C.Types.Fcport.LinkStateInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Node,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Adapter,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    #TODO: Add call to mock
}
function Get-NcFcpPingIgroup
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpPingIgroupStatusInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Igroup,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Wwpn,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Lif,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpPingIgroupStatusInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpPingIgroupStatusInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpPingIgroupStatusInfo
}
function Get-NcFcpPingInitiator
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpPingStatusInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Wwpn,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Lif,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpPingStatusInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpPingStatusInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpPingStatusInfo
}
function Get-NcFcpPortName
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpPortNameInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$PortName,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Adapter,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpPortNameInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpPortNameInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    #TODO: Add call to mock
}
function Get-NcFcpPortNameAlias
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.AliasesInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Alias,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Wwpn,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.AliasesInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.AliasesInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    #TODO: Add call to mock
}
function Get-NcFcpService
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpServiceInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$NodeName,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpServiceInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpServiceInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpService
}
function Get-NcFcpTopology
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpTopologyInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Lif,
        [Parameter( ParameterSetName = 'ByName' )]
        [System.Nullable[long]]$DomainId,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpTopologyInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpTopologyInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    #TODO: Add call to mock
}
function Get-NcFcpTopologyPort
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpTopologyPortInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Node,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Adapter,
        [Parameter( ParameterSetName = 'ByName' )]
        [System.Nullable[long]]$DomainId,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$PortWwpn,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpTopologyPortInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpTopologyPortInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    #TODO: Add call to mock
}
function Get-NcFcpZone
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpZoneInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Node,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Adapter,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$ZonesetName,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$ZoneName,
        [Parameter( ParameterSetName = 'ByName' )]
        [System.Nullable[long]]$Unique,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        $Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Fcp.FcpZoneInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Fcp.FcpZoneInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    #TODO: Add call to mock
}
function Remove-NcFcpService
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}
function Set-NcFcpAdapterSpeed
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Fcp.FcpConfigAdapterInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Node,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Adapter,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Speed,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcFcpAdapter
}
function Set-NcFcpNodeName
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Force,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}
function Set-NcFcpPortName
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Adapter,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$PortName,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}
function Set-NcFcpPortNameAlias
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Wwpn,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Alias,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Force,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}
function Test-NcFcp
{
    [CmdletBinding()]
    [OutputType( [System.Boolean] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    $true
}