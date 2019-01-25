function New-MockNcNodeInfo
{
    param(
        $BackplanePartNumber = '',
        $BackplaneRevision = '',
        $BackplaneSerialNumber = '',
        $BoardSpeed = '2591',
        $BoardType = 'NetApp VSim',
        $ControllerAddress = '',
        $CpuCiobRevisionId = '',
        $CpuFirmwareRelease = '',
        $CpuMicrocodeVersion = '150',
        $CpuPartNumber = '',
        $CpuProcessorId = '0x906ea',
        $CpuProcessorType = '',
        $CpuRevision = '',
        $CpuSerialNumber = '999999',
        $MaximumAggregateSize = '',
        $MaximumAggregateSizeSpecified = 'False',
        $MaximumFlexibleVolumeCount = '',
        $MaximumFlexibleVolumeCountSpecified = 'False',
        $MaximumFlexibleVolumeSize = '',
        $MaximumFlexibleVolumeSizeSpecified = 'False',
        $MemorySize = '5248',
        $NcController = '172.16.32.10',
        $NumberOfProcessors = '2',
        $PartnerSystemId = '',
        $PartnerSystemName = '',
        $PartnerSystemSerialNumber = '',
        $ProdType = 'FAS',
        $StorageConfiguration = '',
        $SupportsRaidArray = 'True',
        $SupportsRaidArraySpecified = 'True',
        $SystemId = '4082368507',
        $SystemMachineType = 'SIMBOX',
        $SystemModel = 'SIMBOX',
        $SystemName = 'cluster01-01',
        $Name,
        $SystemRevision = '',
        $SystemSerialNumber = '4082368-50-7',
        $VendorData1 = '',
        $VendorId = 'NetApp'
    )
    if ($name)
    {
        $SystemName = $Name
    }
    
    $returnObj = [DataONTAP.C.Types.System.SystemInfo]::New()
    $returnObj.BackplanePartNumber = $BackplanePartNumber
    $returnObj.BackplaneRevision = $BackplaneRevision
    $returnObj.BackplaneSerialNumber = $BackplaneSerialNumber
    $returnObj.BoardSpeed = $BoardSpeed
    $returnObj.BoardType = $BoardType
    $returnObj.ControllerAddress = $ControllerAddress
    $returnObj.CpuCiobRevisionId = $CpuCiobRevisionId
    $returnObj.CpuFirmwareRelease = $CpuFirmwareRelease
    $returnObj.CpuMicrocodeVersion = $CpuMicrocodeVersion
    $returnObj.CpuPartNumber = $CpuPartNumber
    $returnObj.CpuProcessorId = $CpuProcessorId
    $returnObj.CpuProcessorType = $CpuProcessorType
    $returnObj.CpuRevision = $CpuRevision
    $returnObj.CpuSerialNumber = $CpuSerialNumber
    $returnObj.MaximumAggregateSize = $MaximumAggregateSize
    $returnObj.MaximumAggregateSizeSpecified = $MaximumAggregateSizeSpecified
    $returnObj.MaximumFlexibleVolumeCount = $MaximumFlexibleVolumeCount
    $returnObj.MaximumFlexibleVolumeCountSpecified = $MaximumFlexibleVolumeCountSpecified
    $returnObj.MaximumFlexibleVolumeSize = $MaximumFlexibleVolumeSize
    $returnObj.MaximumFlexibleVolumeSizeSpecified = $MaximumFlexibleVolumeSizeSpecified
    $returnObj.MemorySize = $MemorySize
    $returnObj.NcController = $NcController
    $returnObj.NumberOfProcessors = $NumberOfProcessors
    $returnObj.PartnerSystemId = $PartnerSystemId
    $returnObj.PartnerSystemName = $PartnerSystemName
    $returnObj.PartnerSystemSerialNumber = $PartnerSystemSerialNumber
    $returnObj.ProdType = $ProdType
    $returnObj.StorageConfiguration = $StorageConfiguration
    $returnObj.SupportsRaidArray = $SupportsRaidArray
    $returnObj.SupportsRaidArraySpecified = $SupportsRaidArraySpecified
    $returnObj.SystemId = $SystemId
    $returnObj.SystemMachineType = $SystemMachineType
    $returnObj.SystemModel = $SystemModel
    $returnObj.SystemName = $SystemName
    $returnObj.SystemRevision = $SystemRevision
    $returnObj.SystemSerialNumber = $SystemSerialNumber
    $returnObj.VendorData1 = $VendorData1
    $returnObj.VendorId = $VendorId
    return $returnObj
}

function New-MockNcNode
{
    param(
        $CpuBusytime = '7944',
        $CpuBusytimeSpecified = 'True',
        $CpuFirmwareRelease = '',
        $EnvFailedFanCount = '0',
        $EnvFailedFanCountSpecified = 'True',
        $EnvFailedFanMessage = 'There are no failed fans.',
        $EnvFailedPowerSupplyCount = '0',
        $EnvFailedPowerSupplyCountSpecified = 'True',
        $EnvFailedPowerSupplyMessage = 'There are no failed power supplies.',
        $EnvOverTemperature = 'False',
        $EnvOverTemperatureSpecified = 'True',
        $IsAllFlashOptimized = 'False',
        $IsAllFlashOptimizedSpecified = 'True',
        $IsCloudOptimized = 'False',
        $IsCloudOptimizedSpecified = 'True',
        $IsDiffSvcs = 'False',
        $IsDiffSvcsSpecified = 'True',
        $IsEpsilonNode = 'True',
        $IsEpsilonNodeSpecified = 'True',
        $IsNodeClusterEligible = 'True',
        $IsNodeClusterEligibleSpecified = 'True',
        $IsNodeHealthy = 'True',
        $IsNodeHealthySpecified = 'True',
        $MaximumAggregateSize = '879609302220800',
        $MaximumNumberOfVolumes = '500',
        $MaximumNumberOfVolumesSpecified = 'True',
        $MaximumVolumeSize = '17592186044416',
        $MaximumVolumeSizeSpecified = 'True',
        $NcController = '172.16.32.10',
        $Node = 'cluster01-01',
        $NodeAssetTag = '',
        $NodeLocation = 'VA',
        $NodeModel = 'SIMBOX',
        $NodeNvramId = '4082368507',
        $NodeNvramIdSpecified = 'True',
        $NodeOwner = '',
        $NodeSerialNumber = '4082368-50-7',
        $NodeStorageConfiguration = 'unknown',
        $NodeSystemId = '4082368507',
        $NodeUptime = '244755',
        $NodeUptimeSpecified = 'True',
        $NodeUptimeTS = '2.19:59:15',
        $NodeUuid = '2ba5e026-bb4d-11e8-93b6-000c2991c0e1',
        $NodeVendor = 'NetApp',
        $NvramBatteryStatus = 'battery_ok',
        $ProductVersion = 'NetApp Release 9.4: Fri Jun 08 22:50:12 UTC 2018'

    )
    $returnObj = [DataONTAP.C.Types.System.NodeDetailsInfo]::New()
    $returnObj.CpuBusytime = $CpuBusytime
    $returnObj.CpuBusytimeSpecified = $CpuBusytimeSpecified
    $returnObj.CpuFirmwareRelease = $CpuFirmwareRelease
    $returnObj.EnvFailedFanCount = $EnvFailedFanCount
    $returnObj.EnvFailedFanCountSpecified = $EnvFailedFanCountSpecified
    $returnObj.EnvFailedFanMessage = $EnvFailedFanMessage
    $returnObj.EnvFailedPowerSupplyCount = $EnvFailedPowerSupplyCount
    $returnObj.EnvFailedPowerSupplyCountSpecified = $EnvFailedPowerSupplyCountSpecified
    $returnObj.EnvFailedPowerSupplyMessage = $EnvFailedPowerSupplyMessage
    $returnObj.EnvOverTemperature = $EnvOverTemperature
    $returnObj.EnvOverTemperatureSpecified = $EnvOverTemperatureSpecified
    $returnObj.IsAllFlashOptimized = $IsAllFlashOptimized
    $returnObj.IsAllFlashOptimizedSpecified = $IsAllFlashOptimizedSpecified
    $returnObj.IsCloudOptimized = $IsCloudOptimized
    $returnObj.IsCloudOptimizedSpecified = $IsCloudOptimizedSpecified
    $returnObj.IsDiffSvcs = $IsDiffSvcs
    $returnObj.IsDiffSvcsSpecified = $IsDiffSvcsSpecified
    $returnObj.IsEpsilonNode = $IsEpsilonNode
    $returnObj.IsEpsilonNodeSpecified = $IsEpsilonNodeSpecified
    $returnObj.IsNodeClusterEligible = $IsNodeClusterEligible
    $returnObj.IsNodeClusterEligibleSpecified = $IsNodeClusterEligibleSpecified
    $returnObj.IsNodeHealthy = $IsNodeHealthy
    $returnObj.IsNodeHealthySpecified = $IsNodeHealthySpecified
    $returnObj.MaximumAggregateSize = $MaximumAggregateSize
    $returnObj.MaximumNumberOfVolumes = $MaximumNumberOfVolumes
    $returnObj.MaximumNumberOfVolumesSpecified = $MaximumNumberOfVolumesSpecified
    $returnObj.MaximumVolumeSize = $MaximumVolumeSize
    $returnObj.MaximumVolumeSizeSpecified = $MaximumVolumeSizeSpecified
    $returnObj.NcController = $NcController
    $returnObj.Node = $Node
    $returnObj.NodeAssetTag = $NodeAssetTag
    $returnObj.NodeLocation = $NodeLocation
    $returnObj.NodeModel = $NodeModel
    $returnObj.NodeNvramId = $NodeNvramId
    $returnObj.NodeNvramIdSpecified = $NodeNvramIdSpecified
    $returnObj.NodeOwner = $NodeOwner
    $returnObj.NodeSerialNumber = $NodeSerialNumber
    $returnObj.NodeStorageConfiguration = $NodeStorageConfiguration
    $returnObj.NodeSystemId = $NodeSystemId
    $returnObj.NodeUptime = $NodeUptime
    $returnObj.NodeUptimeSpecified = $NodeUptimeSpecified
    $returnObj.NodeUptimeTS = $NodeUptimeTS
    $returnObj.NodeUuid = $NodeUuid
    $returnObj.NodeVendor = $NodeVendor
    $returnObj.NvramBatteryStatus = $NvramBatteryStatus
    $returnObj.ProductVersion = $ProductVersion
    return $returnObj
}

function Get-NcNodeInfo
{
    param(
        # The name of one or more nodes to get.  Data ONTAP wildcards are permitted.
        [Parameter()]
        [String]
        $Name,
        # For improved scalability in large clusters, provide a SystemInfo object with various fields set to indicate which fields to return on all objects.  Undesired fields should remain set to null.  Use "Get-NcNodeInfo -Template" to get the initially empty SystemInfo object.  If not specified, all data is returned for each object.
        [Parameter()]
        [DataONTAP.C.Types.System.SystemInfo]
        $Attributes,
        # A clustered Data ONTAP controller to receive this cmdlet, as embodied by an NcController object.
        [Parameter()]
        $Controller
    )

    New-MockNcNodeInfo -SystemName $Name -NcController $Controller
}