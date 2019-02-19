Function New-MockNcAggr
{
    [CmdletBinding()]
    Param(
        $Name = 'VICE07_aggr1',
        $Attributes,
        $Controller,
        $Template,
        $Fill,
        $Query,
        $BlockType = '64_bit',
        $HaPolicy = 'sfo',
        $OwnerName = 'VICE-07',
        $State = 'online',
        [decimal]$SizeTotal = 0,
        [decimal]$SnapShotSizeTotal = 0,
        [decimal]$SizeUsed = 0,
        [decimal]$SnapShotSizeUsed = 0,
        [decimal]$PhysicalUsed = 6363311718400,
        [Int]$SnapShotReservePercent = 0,
        [Int]$PercentUsedCapacity = 0,
        [int]$PhysicalUsedPercent = 42,
        [bool]$IsInconsistent = $false,
        [bool]$IsRootAggregate = $false,
        # Provide a deserialized Aggr object to be serialized and output correctly. For instance you can use Import-CliXML to and give the deserialized Aggrs and they will be returned serialized correctly.
        [Parameter( ValueFromPipeline )]
        [ValidateNotNullOrEmpty()]
        [Object[]]
        $InputObject
    )

    process
    {
        if ( $InputObject )
        {
            foreach ( $_deserializedAggr in $InputObject )
            {
                $mockAggr = Resolve-DeserializedObject -InputObject $_deserializedAggr -ReturnObjectType 'DataONTAP.C.Types.Aggr.AggrAttributes'
    
                return $mockAggr

            }
        }
        else
        {
            $_mockAggr = [DataONTAP.C.Types.Aggr.AggrAttributes]::new()

            $Aggr64bitUpgradeAttributes = [DataONTAP.C.Types.Aggr.Aggr64bitUpgradeAttributes]::new()
            $AggrFsAttributes = [DataONTAP.C.Types.Aggr.AggrFsAttributes]::new()
            $AggrFsAttributes.BlockType = $BlockType
            $AggrFsAttributes.Fsid = '1741636997'
            $AggrFsAttributes.NcController = New-MockNcController
            $AggrFsAttributes.Type = 'aggr'
            $AggrFsAttributes.FsidSpecified = $true
            $AggrInodeAttributes = [DataONTAP.C.Types.Aggr.AggrInodeAttributes]::new()
            $AggrInodeAttributes.FilesPrivateUsed = 873
            $AggrInodeAttributes.FilesTotal = 31149
            $AggrInodeAttributes.FilesUsed = 96
            $AggrInodeAttributes.InodefilePrivateCapacity = 31149
            $AggrInodeAttributes.InodefilePublicCapacity = 31149
            $AggrInodeAttributes.InofileVersion = 4
            $AggrInodeAttributes.MaxfilesAvailable = 31149
            $AggrInodeAttributes.MaxfilesPossible = 2040109451
            $AggrInodeAttributes.MaxfilesUsed = 96
            $AggrInodeAttributes.NcController = New-MockNcController
            $AggrInodeAttributes.PercentInodeUsedCapacity = 0
            $AggrInodeAttributes.FilesPrivateUsedSpecified = $True
            $AggrInodeAttributes.FilesTotalSpecified = $True
            $AggrInodeAttributes.FilesUsedSpecified = $True
            $AggrInodeAttributes.InodefilePrivateCapacitySpecified = $True
            $AggrInodeAttributes.InodefilePublicCapacitySpecified = $True
            $AggrInodeAttributes.InofileVersionSpecified = $True
            $AggrInodeAttributes.MaxfilesAvailableSpecified = $True
            $AggrInodeAttributes.MaxfilesPossibleSpecified = $True
            $AggrInodeAttributes.MaxfilesUsedSpecified = $True
            $AggrInodeAttributes.PercentInodeUsedCapacitySpecified = $True
            $AggrOwnershipAttributes = [DataONTAP.C.Types.Aggr.AggrOwnershipAttributes]::new()
            $AggrOwnershipAttributes.Cluster = 'VICE'
            $AggrOwnershipAttributes.DrHomeId =
            $AggrOwnershipAttributes.DrHomeName =
            $AggrOwnershipAttributes.HomeId = 536977440
            $AggrOwnershipAttributes.HomeName = 'VICE-07'
            $AggrOwnershipAttributes.NcController = New-MockNcController
            $AggrOwnershipAttributes.OwnerId = 536977440
            $AggrOwnershipAttributes.OwnerName = $OwnerName
            $AggrOwnershipAttributes.DrHomeIdSpecified = $False
            $AggrOwnershipAttributes.HomeIdSpecified = $True
            $AggrOwnershipAttributes.OwnerIdSpecified = $True
            $AggrPerformanceAttributes = [DataONTAP.C.Types.Aggr.AggrPerformanceAttributes]::new()
            $AggrPerformanceAttributes.FreeSpaceRealloc = 'off'
            $AggrPerformanceAttributes.MaxWriteAllocBlocks = 0
            $AggrPerformanceAttributes.NcController = New-MockNcController
            $AggrPerformanceAttributes.MaxWriteAllocBlocksSpecified = $True
            $rg0 = @{
                ChecksumStyle                        = 'block'
                IsCacheTier                          = $False
                IsRecomputingParity                  = $False
                IsReconstructing                     = $False
                NcController                         = [NetApp.Ontapi.Filer.C.NcController]::new( '127.0.0.1' )#New-MockNcController
                RaidgroupName                        = '/VICE07_aggr1/plex0/rg0'
                RecomputingParityPercentage          = 0
                ReconstructionPercentage             = 0
                IsCacheTierSpecified                 = $True
                IsRecomputingParitySpecified         = $True
                IsReconstructingSpecified            = $True
                RecomputingParityPercentageSpecified = $True
                ReconstructionPercentageSpecified    = $True
            }
            $rg1 = @{
                ChecksumStyle                        = 'block'
                IsCacheTier                          = $true
                IsRecomputingParity                  = $False
                IsReconstructing                     = $False
                NcController                         = [NetApp.Ontapi.Filer.C.NcController]::new( '127.0.0.1' )#New-MockNcController
                RaidgroupName                        = '/VICE07_aggr1/plex0/rg1'
                RecomputingParityPercentage          = 0
                ReconstructionPercentage             = 0
                IsCacheTierSpecified                 = $True
                IsRecomputingParitySpecified         = $True
                IsReconstructingSpecified            = $True
                RecomputingParityPercentageSpecified = $True
                ReconstructionPercentageSpecified    = $True
            }
            $RaidgroupAttributes = ( $RG0, $RG1| % {new-object DataONTAP.C.Types.Aggr.RaidgroupAttributes -Property $_} )
            $PlexAttributes = [DataONTAP.C.Types.Aggr.PlexAttributes]::new()
            $PlexAttributes.IsOnline = $True
            $PlexAttributes.IsResyncing = $False
            $PlexAttributes.NcController = New-MockNcController
            $PlexAttributes.PlexName = ' /VICE07_aggr1/plex0'
            $PlexAttributes.PlexStatus = 'normal,active'
            $PlexAttributes.Pool = 0
            $PlexAttributes.Raidgroups = $RaidgroupAttributes
            $PlexAttributes.ResyncingPercentage = 0
            $PlexAttributes.IsOnlineSpecified = $True
            $PlexAttributes.IsResyncingSpecified = $True
            $PlexAttributes.PoolSpecified = $True
            $PlexAttributes.ResyncingPercentageSpecified = $True
            $PlexAttributes.ResyncLevelSpecified = $False
            $AggrRaidAttributes = [DataONTAP.C.Types.Aggr.AggrRaidAttributes]::new()
            $AggrRaidAttributes.AggregateType = 'hybrid'
            $AggrRaidAttributes.CacheRaidGroupSize = 6
            $AggrRaidAttributes.ChecksumStatus = 'active'
            $AggrRaidAttributes.ChecksumStyle = 'block'
            $AggrRaidAttributes.DiskCount = 22
            $AggrRaidAttributes.HaPolicy = $HaPolicy
            $AggrRaidAttributes.HasLocalRoot = $False
            $AggrRaidAttributes.HasPartnerRoot = $False
            $AggrRaidAttributes.IsChecksumEnabled = $True
            $AggrRaidAttributes.IsEncrypted = $False
            $AggrRaidAttributes.IsHybrid = $True
            $AggrRaidAttributes.IsHybridEnabled = $True
            $AggrRaidAttributes.IsInconsistent = $IsInconsistent
            $AggrRaidAttributes.IsMirrored = $False
            $AggrRaidAttributes.IsRootAggregate = $IsRootAggregate
            $AggrRaidAttributes.MirrorStatus = 'unmirrored'
            $AggrRaidAttributes.MountState = 'online'
            $AggrRaidAttributes.NcController = New-MockNcController
            $AggrRaidAttributes.PlexCount = 1
            $AggrRaidAttributes.Plexes = $PlexAttributes
            $AggrRaidAttributes.RaidLostWriteState = 'on'
            $AggrRaidAttributes.RaidSize = 16
            $AggrRaidAttributes.RaidStatus = 'raid_dp, hybrid, normal'
            $AggrRaidAttributes.RaidType = 'raid_dp'
            $AggrRaidAttributes.State = $State
            $AggrRaidAttributes.UsesSharedDisks = $True
            $AggrRaidAttributes.CacheRaidGroupSizeSpecified = $True
            $AggrRaidAttributes.DiskCountSpecified = $True
            $AggrRaidAttributes.HasLocalRootSpecified = $True
            $AggrRaidAttributes.HasPartnerRootSpecified = $True
            $AggrRaidAttributes.IsChecksumEnabledSpecified = $True
            $AggrRaidAttributes.IsEncryptedSpecified = $True
            $AggrRaidAttributes.IsHybridEnabledSpecified = $True
            $AggrRaidAttributes.IsHybridSpecified = $True
            $AggrRaidAttributes.IsInconsistentSpecified = $True
            $AggrRaidAttributes.IsMirroredSpecified = $True
            $AggrRaidAttributes.IsRootAggregateSpecified = $True
            $AggrRaidAttributes.PlexCountSpecified = $True
            $AggrRaidAttributes.RaidSizeSpecified = $True
            $AggrRaidAttributes.UsesSharedDisksSpecified = $True
            $AggrSnaplockAttributes = [DataONTAP.C.Types.Aggr.AggrSnaplockAttributes]::new()
            $AggrSnaplockAttributes.IsSnaplock = $False
            $AggrSnaplockAttributes.NcController = New-MockNcController
            $AggrSnaplockAttributes.SnaplockType = 'non_snaplock'
            $AggrSnaplockAttributes.IsSnaplockSpecified = $True
            $AggrSnapmirrorAttributes = [DataONTAP.C.Types.Aggr.AggrSnapmirrorAttributes]::new()
            $AggrSnapmirrorAttributes.DpSnapmirrorDestinations = 1
            $AggrSnapmirrorAttributes.NcController = New-MockNcController
            $AggrSnapmirrorAttributes.DpSnapmirrorDestinationsSpecified = $True
            $AggrSnapmirrorAttributes.LsSnapmirrorDestinationsSpecified = $False
            $AggrSnapmirrorAttributes.MvSnapmirrorDestinationsSpecified = $False
            $AggrSnapshotAttributes = [DataONTAP.C.Types.Aggr.AggrSnapshotAttributes]::new()
            $AggrSnapshotAttributes.FilesTotal = 0
            $AggrSnapshotAttributes.FilesUsed = 0
            $AggrSnapshotAttributes.IsSnapshotAutoCreateEnabled = $False
            $AggrSnapshotAttributes.IsSnapshotAutoDeleteEnabled = $True
            $AggrSnapshotAttributes.MaxfilesAvailable = 0
            $AggrSnapshotAttributes.MaxfilesPossible = 0
            $AggrSnapshotAttributes.MaxfilesUsed = 0
            $AggrSnapshotAttributes.NcController = New-MockNcController
            $AggrSnapshotAttributes.PercentInodeUsedCapacity = 0
            $AggrSnapshotAttributes.PercentUsedCapacity = $PercentUsedCapacity
            $AggrSnapshotAttributes.SizeAvailable = $( $SnapShotSizeTotal - $SnapShotSizeUsed )
            $AggrSnapshotAttributes.SizeTotal = $SnapShotSizeTotal
            $AggrSnapshotAttributes.SizeUsed = $SnapShotSizeUsed
            $AggrSnapshotAttributes.SnapshotReservePercent = $SnapShotReservePercent
            $AggrSnapshotAttributes.FilesTotalSpecified = $True
            $AggrSnapshotAttributes.FilesUsedSpecified = $True
            $AggrSnapshotAttributes.InofileVersionSpecified = $False
            $AggrSnapshotAttributes.IsSnapshotAutoCreateEnabledSpecified = $True
            $AggrSnapshotAttributes.IsSnapshotAutoDeleteEnabledSpecified = $True
            $AggrSnapshotAttributes.MaxfilesAvailableSpecified = $True
            $AggrSnapshotAttributes.MaxfilesPossibleSpecified = $True
            $AggrSnapshotAttributes.MaxfilesUsedSpecified = $True
            $AggrSnapshotAttributes.PercentInodeUsedCapacitySpecified = $True
            $AggrSnapshotAttributes.PercentUsedCapacitySpecified = $True
            $AggrSnapshotAttributes.SizeAvailableSpecified = $True
            $AggrSnapshotAttributes.SizeTotalSpecified = $True
            $AggrSnapshotAttributes.SizeUsedSpecified = $True
            $AggrSnapshotAttributes.SnapshotReservePercentSpecified = $True
            $AggrSpaceAttributes = [DataONTAP.C.Types.Aggr.AggrSpaceAttributes]::new()
            $AggrSpaceAttributes.DataCompactedCount = 0
            $AggrSpaceAttributes.DataCompactionSpaceSaved = 0
            $AggrSpaceAttributes.DataCompactionSpaceSavedPercent = 0
            $AggrSpaceAttributes.HybridCacheSizeTotal = 399684665344
            $AggrSpaceAttributes.NcController = New-MockNcController
            $AggrSpaceAttributes.PercentUsedCapacity = 44
            $AggrSpaceAttributes.PhysicalUsed = $PhysicalUsed
            if ( $SizeTotal -and -not $PhysicalUsedPercent -and $PhysicalUsed )
            {
                $PhysicalUsedPercent = [math]::Round( ( $PhysicalUsed / $SizeTotal * 100 ), 0 )
            }
            $AggrSpaceAttributes.PhysicalUsedPercent = $PhysicalUsedPercent
            $AggrSpaceAttributes.SizeAvailable = $( $SizeTotal - $SizeUsed )
            $AggrSpaceAttributes.SizeTotal = $SizeTotal
            $AggrSpaceAttributes.SizeUsed = $SizeUsed
            $AggrSpaceAttributes.TotalReservedSpace = 0
            $AggrSpaceAttributes.AggregateMetadataSpecified = $False
            $AggrSpaceAttributes.DataCoalescedCountSpecified = $False
            $AggrSpaceAttributes.DataCoalescingSpaceSavedPercentSpecified = $False
            $AggrSpaceAttributes.DataCoalescingSpaceSavedSpecified = $False
            $AggrSpaceAttributes.DataCompactedCountSpecified = $True
            $AggrSpaceAttributes.DataCompactionSpaceSavedPercentSpecified = $True
            $AggrSpaceAttributes.DataCompactionSpaceSavedSpecified = $True
            $AggrSpaceAttributes.HybridCacheSizeTotalSpecified = $True
            $AggrSpaceAttributes.PercentUsedCapacitySpecified = $True
            $AggrSpaceAttributes.PhysicalUsedPercentSpecified = $True
            $AggrSpaceAttributes.PhysicalUsedSpecified = $True
            $AggrSpaceAttributes.SizeAvailableSpecified = $True
            $AggrSpaceAttributes.SizeTotalSpecified = $True
            $AggrSpaceAttributes.SizeUsedSpecified = $True
            $AggrSpaceAttributes.TotalReservedSpaceSpecified = $True
            $AggrSpaceAttributes.UsedIncludingSnapshotReserveSpecified = $False
            $AggrSpaceAttributes.VolumeFootprintsSpecified = $False
            $AggrStripingAttributes = [DataONTAP.C.Types.Aggr.AggrStripingAttributes]::new()
            $AggrVolumeCountAttributes = [DataONTAP.C.Types.Aggr.AggrVolumeCountAttributes]::new()
            $AggrVolumeCountAttributes.FlexvolCount = 25
            $AggrVolumeCountAttributes.NcController = New-MockNcController
            $AggrVolumeCountAttributes.FlexvolCountCollectiveSpecified = $False
            $AggrVolumeCountAttributes.FlexvolCountNotOnlineSpecified = $False
            $AggrVolumeCountAttributes.FlexvolCountQuiescedSpecified = $False
            $AggrVolumeCountAttributes.FlexvolCountStripedSpecified = $False
            $AggrWaflironAttributes = [DataONTAP.C.Types.Aggr.AggrWaflironAttributes]::new()
            $_mockAggr.State = 'online'
            $_mockAggr.TotalSize = 15092552880128
            $_mockAggr.Used = 44
            $_mockAggr.Available = 8430225879040
            $_mockAggr.Disks = 22
            $_mockAggr.RaidType = 'raid_dp, hybrid, normal'
            $_mockAggr.RaidSize = 16
            $_mockAggr.Volumes = 25
            $_mockAggr.AggregateName = $Name
            $_mockAggr.AggregateUuid = 'ac3c1398-b7d8-41ef-aa0d-5ad57fd48edd'
            $_mockAggr.AggrFsAttributes = $AggrFsAttributes
            $_mockAggr.AggrInodeAttributes = $AggrInodeAttributes
            $_mockAggr.AggrOwnershipAttributes = $AggrOwnershipAttributes
            $_mockAggr.AggrPerformanceAttributes = $AggrPerformanceAttributes
            $_mockAggr.AggrRaidAttributes = $AggrRaidAttributes
            $_mockAggr.AggrSnaplockAttributes = $AggrSnaplockAttributes
            $_mockAggr.AggrSnapmirrorAttributes = $AggrSnapmirrorAttributes
            $_mockAggr.AggrSnapshotAttributes = $AggrSnapshotAttributes
            $_mockAggr.AggrSpaceAttributes = $AggrSpaceAttributes
            $_mockAggr.AggrStripingAttributes = $AggrStripingAttributes
            $_mockAggr.AggrVolumeCountAttributes = $AggrVolumeCountAttributes
            $_mockAggr.AutobalanceAvailableThresholdPercent = 40
            $_mockAggr.AutobalanceState = 'ineligible'
            $_mockAggr.AutobalanceStateChangeCounter = 0
            $_mockAggr.AutobalanceUnbalancedThresholdPercent = 70
            $_mockAggr.ExcludedFromAutobalanceSpecified = $False
            $_mockAggr.IsAutobalanceEligible = $False
            $_mockAggr.IsAutobalanceEligibleSpecified = $True
            $_mockAggr.IsCftPrecommit = $False
            $_mockAggr.IsCftPrecommitSpecified = $True
            $_mockAggr.IsTransitionOutOfSpace = $False
            $_mockAggr.IsTransitionOutOfSpaceSpecified = $True
            return $_mockAggr;
        }
    }
    
}

function Get-NcAggr
{
    [CmdletBinding()]
    Param(
        $Name,
        $Attributes,
        $Controller,
        $Template,
        $Fill,
        $Query
    )
    New-MockNcAggr @PSBoundParameters
}

function New-MockNcAggrSpace
{
    [CmdletBinding()]
    Param(
        $Name,
        $Attributes,
        $Controller,
        $Template,
        $Query,
        $AggregateSize = 6606028800,
        $PercentSnapshotSpace = 5,
        $PhysicalUsed = 2496774144,
        $PhysicalUsedPercent = 38
    )

    $_mockAggrSpace = [DataONTAP.C.Types.Aggr.SpaceInformation]::new()
    $_mockAggrSpace.Aggregate = $Name
    $_mockAggrSpace.AggregateMetadata = 462848
    $_mockAggrSpace.AggregateMetadataPercent = 0
    $_mockAggrSpace.AggregateSize = $AggregateSize
    $_mockAggrSpace.NcController = $Controller
    $_mockAggrSpace.ObjectStoreMetadata = $null
    $_mockAggrSpace.ObjectStoreMetadataPercent = $null
    $_mockAggrSpace.ObjectStorePhysicalUsed = $null
    $_mockAggrSpace.ObjectStorePhysicalUsedPercent = $null
    $_mockAggrSpace.ObjectStoreReferencedCapacity = $null
    $_mockAggrSpace.ObjectStoreReferencedCapacityPercent = $null
    $_mockAggrSpace.ObjectStoreSisSpaceSaved = $null
    $_mockAggrSpace.ObjectStoreSisSpaceSavedPercent = $null
    $_mockAggrSpace.ObjectStoreSize = $null
    $_mockAggrSpace.ObjectStoreUnreclaimedSpace = $null
    $_mockAggrSpace.ObjectStoreUnreclaimedSpacePercent = $null
    $_mockAggrSpace.PercentSnapshotSpace = $PercentSnapshotSpace
    $_mockAggrSpace.PhysicalUsed = $PhysicalUsed
    $_mockAggrSpace.PhysicalUsedPercent = $PhysicalUsedPercent
    $_mockAggrSpace.SnapshotReserveUnusable = $null
    $_mockAggrSpace.SnapshotReserveUnusablePercent = $null
    $_mockAggrSpace.SnapSizeTotal = 330301440
    $_mockAggrSpace.TierName = $null
    $_mockAggrSpace.UsedIncludingSnapshotReserve = 3569885184
    $_mockAggrSpace.UsedIncludingSnapshotReservePercent = 54
    $_mockAggrSpace.VolumeFootprints = 3239120896
    $_mockAggrSpace.VolumeFootprintsPercent = 49
    $_mockAggrSpace.AggregateMetadataPercentSpecified = $True
    $_mockAggrSpace.AggregateMetadataSpecified = $True
    $_mockAggrSpace.AggregateSizeSpecified = $True
    $_mockAggrSpace.ObjectStoreMetadataPercentSpecified = $False
    $_mockAggrSpace.ObjectStoreMetadataSpecified = $False
    $_mockAggrSpace.ObjectStorePhysicalUsedPercentSpecified = $False
    $_mockAggrSpace.ObjectStorePhysicalUsedSpecified = $False
    $_mockAggrSpace.ObjectStoreReferencedCapacityPercentSpecified = $False
    $_mockAggrSpace.ObjectStoreReferencedCapacitySpecified = $False
    $_mockAggrSpace.ObjectStoreSisSpaceSavedPercentSpecified = $False
    $_mockAggrSpace.ObjectStoreSisSpaceSavedSpecified = $False
    $_mockAggrSpace.ObjectStoreSizeSpecified = $False
    $_mockAggrSpace.ObjectStoreUnreclaimedSpacePercentSpecified = $False
    $_mockAggrSpace.ObjectStoreUnreclaimedSpaceSpecified = $False
    $_mockAggrSpace.PercentSnapshotSpaceSpecified = $True
    $_mockAggrSpace.PhysicalUsedPercentSpecified = $True
    $_mockAggrSpace.PhysicalUsedSpecified = $True
    $_mockAggrSpace.SnapshotReserveUnusablePercentSpecified = $False
    $_mockAggrSpace.SnapshotReserveUnusableSpecified = $False
    $_mockAggrSpace.SnapSizeTotalSpecified = $True
    $_mockAggrSpace.UsedIncludingSnapshotReservePercentSpecified = $True
    $_mockAggrSpace.UsedIncludingSnapshotReserveSpecified = $True
    $_mockAggrSpace.VolumeFootprintsPercentSpecified = $True
    $_mockAggrSpace.VolumeFootprintsSpecified = $True

    return $_mockAggrSpace
}

function Get-NcAggrSpace
{
    [CmdletBinding()]
    param (
        [Parameter( ParameterSetName = 'one' )]
        [string]
        $Name,
        [Parameter( ParameterSetName = 'one' )]
        [Parameter( ParameterSetName = 'three' )]
        $Attributes,
        $Controller,
        [Parameter( ParameterSetName = 'two' )]
        [switch]
        $Template,
        [Parameter( ParameterSetName = 'three' )]
        $Query
    )
    
    New-MockNcAggrSpace @PSBoundParameters
}