function New-MockNcVol
{
    param(
        [switch]$empty,
        $Encrypt = 'False',
        $EncryptSpecified = 'True',
        $KeyId,
        $Name = 'Sprint1',
        $VolumeVmAlignAttributes,
        $VolumeVserverDrProtectionAttributes,
        $Vserver = 'TestSVM',
        $Aggregate = 'cluster01_01_aggr0',
        $Available = '1594777600',
        $Dedupe = 'True',
        $FilesTotal = '124515',
        $FilesUsed = '102',
        $IsInfiniteVolume = 'False',
        $State = 'online',
        $TotalSize = '4294967296',
        $Used = '0',
        $Controller,
        $OnAccessPolicy = 'default',
        $IsAutobalanceEligible = $True,
        $IsAutobalanceEligibleSpecified = $True,
        $GrowThresholdPercent = 85,
        $IncrementPercent,
        $IncrementSize,
        $IsEnabled = $False,
        $MaximumSize = 1288486912,
        $MinimumSize = 1073741824,
        $Mode = 'off',
        $Reset,
        $ShrinkThresholdPercent = 50,
        $GrowThresholdPercentSpecified = $True,
        $IncrementPercentSpecified = $False,
        $IncrementSizeSpecified = $False,
        $IsEnabledSpecified = $True,
        $MaximumSizeSpecified = $True,
        $MinimumSizeSpecified = $True,
        $ResetSpecified = $False,
        $ShrinkThresholdPercentSpecified = $True,
        $I2pEnabled = $True,
        $IndexDirEnabled,
        $MaxDirSize = 335544320,
        $RootDirGen = 1385739523,
        $I2pEnabledSpecified = $True,
        $IndexDirEnabledSpecified = $False,
        $MaxDirSizeSpecified = $True,
        $RootDirGenSpecified = $True,
        $Policy = 'default',
        $CacheRetentionPriority = 'normal',
        $CachingPolicy = 'auto',
        $Eligibility = 'read_write',
        $WriteCacheIneligibilityReason,
        $AggrList,
        $Comment,
        $ConstituentRole,
        $ContainingAggregateName = 'VICE08_aggr1',
        $ContainingAggregateUuid = 'df7b4181-0bb9-4871-8f5a-c7932ae7c76e',
        $CreationTime = 1471462538,
        $Dsid = 1717,
        $FlexgroupIndex,
        $FlexgroupMsid,
        $FlexgroupUuid,
        $Fsid = 1717,
        $InstanceUuid = '57fa9d31-775c-4c2b-8b84-ddfce0b1f6e3',
        $JunctionParentName,
        $JunctionPath = '/',
        $Msid = 2153160076,
        $NameOrdinal = 'base',
        $Node = 'VICE-08',
        $Nodes,
        $OwningVserverName = 'Exists',
        $OwningVserverUuid = 'c452ace5-64b1-11e6-ab82-00a0986e758d',
        $ProvenanceUuid = '57fa9d31-775c-4c2b-8b84-ddfce0b1f6e3',
        $Style = 'flex',
        $StyleExtended = 'flexvol',
        $Type = 'rw',
        $Uuid = 'c6b63c06-64b1-11e6-a60f-00a0986e7e41',
        $CreationTimeSpecified = $True,
        $DsidSpecified = $True,
        $FlexgroupIndexSpecified = $False,
        $FlexgroupMsidSpecified = $False,
        $BlockType = '64_bit',
        $FilesPrivateUsed = 502,
        $InodefilePrivateCapacity = 31122,
        $InodefilePublicCapacity = 31122,
        $InofileVersion = 4,
        $FilesPrivateUsedSpecified = $True,
        $FilesTotalSpecified = $True,
        $FilesUsedSpecified = $True,
        $InodefilePrivateCapacitySpecified = $True,
        $InodefilePublicCapacitySpecified = $True,
        $InofileVersionSpecified = $True,
        $IsConvertUcodeEnabled = $True,
        $IsCreateUcodeEnabled = $True,
        $Language = 'en_US ( English ( US ) )',
        $LanguageCode = 'en_us',
        $NfsCharacterSet = 'iso-8859-1|iso-8859-1|Thu Oct  1 18:00:53 EDT 1998',
        $OemCharacterSet = 'cp437|cp437|Thu Oct  1 18:00:53 EDT 1998',
        $IsConvertUcodeEnabledSpecified = $True,
        $IsCreateUcodeEnabledSpecified = $True,
        $IsDataProtectionMirror = $False,
        $IsLoadSharingMirror = $False,
        $IsMoveMirror = $False,
        $IsReplicaVolume = $False,
        $MirrorTransferInProgress = $False,
        $RedirectSnapshotId = 0,
        $IsDataProtectionMirrorSpecified = $True,
        $IsLoadSharingMirrorSpecified = $True,
        $IsMoveMirrorSpecified = $True,
        $IsReplicaVolumeSpecified = $True,
        $MirrorTransferInProgressSpecified = $True,
        $RedirectSnapshotIdSpecified = $True,
        $ExtentEnabled = 'off',
        $FcDelegsEnabled = $True,
        $IsAtimeUpdateEnabled = $True,
        $MaxWriteAllocBlocks = 0,
        $MinimalReadAhead = $False,
        $ReadRealloc = 'off',
        $FcDelegsEnabledSpecified = $True,
        $IsAtimeUpdateEnabledSpecified = $True,
        $MaxWriteAllocBlocksSpecified = $True,
        $MinimalReadAheadSpecified = $True,
        $CompressionSpaceSaved = 0,
        $DeduplicationSpaceSaved = 0,
        $DeduplicationSpaceShared = 0,
        $IsSisLoggingEnabled = $False,
        $IsSisStateEnabled = $False,
        $IsSisVolume = $False,
        $PercentageCompressionSpaceSaved = 0,
        $PercentageDeduplicationSpaceSaved = 0,
        $PercentageTotalSpaceSaved = 0,
        $TotalSpaceSaved = 0,
        $CompressionSpaceSavedSpecified = $True,
        $DeduplicationSpaceSavedSpecified = $True,
        $IsSisLoggingEnabledSpecified = $True,
        $IsSisStateEnabledSpecified = $True,
        $IsSisVolumeSpecified = $True,
        $PercentageCompressionSpaceSavedSpecified = $True,
        $PercentageDeduplicationSpaceSavedSpecified = $True,
        $PercentageTotalSpaceSavedSpecified = $True,
        $TotalSpaceSavedSpecified = $True,
        $SnaplockType = 'non_snaplock',
        $AutoSnapshotsEnabled = $True,
        $SnapdirAccessEnabled = $True,
        $SnapshotCloneDependencyEnabled = $False,
        $SnapshotCount = 10,
        $SnapshotPolicy = 'default',
        $AutoSnapshotsEnabledSpecified = $True,
        $SnapdirAccessEnabledSpecified = $True,
        $SnapshotCloneDependencyEnabledSpecified = $True,
        $SnapshotCountSpecified = $True,
        $Commitment = 'try',
        $DeferDelete = 'user_created',
        $DeleteOrder = 'oldest_first',
        $DestroyList = 'none',
        $IsAutodeleteEnabled = $False,
        $Prefix,
        $TargetFreeSpace = 20,
        $Trigger = 'volume',
        $IsAutodeleteEnabledSpecified = $True,
        $TargetFreeSpaceSpecified = $True,
        $FilesystemSize = 1073741824,
        $IsFilesysSizeFixed = $False,
        $IsSpaceGuaranteeEnabled = $True,
        $IsSpaceSloEnabled = 'true',
        $MaxConstituentSize,
        $OverwriteReserve = 0,
        $OverwriteReserveRequired = 0,
        $OverwriteReserveUsed = 0,
        $OverwriteReserveUsedActual = 0,
        $PercentageFractionalReserve = 100,
        $PercentageSizeUsed = 5,
        $PercentageSnapshotReserve = 5,
        $PercentageSnapshotReserveUsed = 6,
        $PhysicalUsed = 4517888,
        $PhysicalUsedPercent = 0,
        $Size = 1073741824,
        $SizeAvailable = 1018732544,
        $SizeAvailableForSnapshots = 1069223936,
        $SizeTotal = 1020055552,
        $SizeUsed = 1323008,
        $SizeUsedBySnapshots = 3194880,
        $SnapshotReserveSize = 53686272,
        $SpaceFullThresholdPercent = 98,
        $SpaceGuarantee = 'volume',
        $SpaceMgmtOptionTryFirst = 'volume_grow',
        $SpaceNearlyFullThresholdPercent = 95,
        $SpaceSlo = 'none',
        $FilesystemSizeSpecified = $True,
        $IsFilesysSizeFixedSpecified = $True,
        $IsSpaceGuaranteeEnabledSpecified = $True,
        $OverwriteReserveRequiredSpecified = $True,
        $OverwriteReserveSpecified = $True,
        $OverwriteReserveUsedActualSpecified = $True,
        $OverwriteReserveUsedSpecified = $True,
        $PercentageFractionalReserveSpecified = $True,
        $PercentageSizeUsedSpecified = $True,
        $PercentageSnapshotReserveSpecified = $True,
        $PercentageSnapshotReserveUsedSpecified = $True,
        $PhysicalUsedPercentSpecified = $True,
        $PhysicalUsedSpecified = $True,
        $SizeAvailableForSnapshotsSpecified = $True,
        $SizeAvailableSpecified = $True,
        $SizeSpecified = $True,
        $SizeTotalSpecified = $True,
        $SizeUsedBySnapshotsSpecified = $True,
        $SizeUsedSpecified = $True,
        $SnapshotReserveSizeSpecified = $True,
        $SpaceFullThresholdPercentSpecified = $True,
        $SpaceNearlyFullThresholdPercentSpecified = $True,
        $BecomeNodeRootAfterReboot = $False,
        $ForceNvfailOnDr = $False,
        $IgnoreInconsistent = $False,
        $InNvfailedState = $False,
        $IsClusterVolume = $True,
        $IsConstituent = $False,
        $IsFlexgroup = $False,
        $IsInconsistent = $False,
        $IsInvalid = $False,
        $IsJunctionActive = $True,
        $IsMoving = $False,
        $IsNodeRoot = $False,
        $IsNvfailEnabled = $False,
        $IsQuiescedInMemory = $False,
        $IsQuiescedOnDisk = $False,
        $IsUnrecoverable = $False,
        $IsVolumeInCutover = $False,
        $IsVserverRoot = $True,
        $BecomeNodeRootAfterRebootSpecified = $True,
        $ForceNvfailOnDrSpecified = $True,
        $IgnoreInconsistentSpecified = $True,
        $InNvfailedStateSpecified = $True,
        $IsClusterVolumeSpecified = $True,
        $IsConstituentSpecified = $True,
        $IsFlexgroupSpecified = $True,
        $IsHealthySpecified = $False,
        $IsInconsistentSpecified = $True,
        $IsInvalidSpecified = $True,
        $IsJunctionActiveSpecified = $True,
        $IsMovingSpecified = $True,
        $IsNodeRootSpecified = $True,
        $IsNvfailEnabledSpecified = $True,
        $IsQuiescedInMemorySpecified = $True,
        $IsQuiescedOnDiskSpecified = $True,
        $IsUnrecoverableSpecified = $True,
        $IsVolumeInCutoverSpecified = $True,
        $IsVserverRootSpecified = $True,
        $IsCftPrecommit = $False,
        $IsCopiedForTransition = $False,
        $IsTransitioned = $False,
        $TransitionBehavior = 'none',
        $IsCftPrecommitSpecified = $True,
        $IsCopiedForTransitionSpecified = $True,
        $IsTransitionedSpecified = $True
    )
    [CmdletBinding()]
    $returnObj = [DataONTAP.C.Types.Volume.VolumeAttributes]::new()
    if ( $empty )
    {
        # this is needed to mock the query objects
        $returnObj.VolumeIdAttributes = [DataONTAP.C.Types.Volume.VolumeIdAttributes]::new()
        $returnObj.VolumeStateAttributes = [DataONTAP.C.Types.Volume.VolumeStateAttributes]::new()
        return $returnObj;
    }
    else
    {
        $NcController = New-MockNcController
        $VolumeAntivirusAttributes = [DataONTAP.C.Types.Volume.VolumeAntivirusAttributes]::new()
        $VolumeAntivirusAttributes.NcController = $NcController
        $VolumeAntivirusAttributes.OnAccessPolicy = $OnAccessPolicy

        $VolumeAutobalanceAttributes = [DataONTAP.C.Types.Volume.VolumeAutobalanceAttributes]::new()
        $VolumeAutobalanceAttributes.IsAutobalanceEligible = $IsAutobalanceEligible
        $VolumeAutobalanceAttributes.NcController = $NcController
        $VolumeAutobalanceAttributes.IsAutobalanceEligibleSpecified = $IsAutobalanceEligibleSpecified

        $VolumeAutosizeAttributes = [DataONTAP.C.Types.Volume.VolumeAutosizeAttributes]::new()
        $VolumeAutosizeAttributes.GrowThresholdPercent = $GrowThresholdPercent
        $VolumeAutosizeAttributes.IncrementPercent = $IncrementPercent
        $VolumeAutosizeAttributes.IncrementSize = $IncrementSize
        $VolumeAutosizeAttributes.IsEnabled = $IsEnabled
        $VolumeAutosizeAttributes.MaximumSize = $MaximumSize
        $VolumeAutosizeAttributes.MinimumSize = $MinimumSize
        $VolumeAutosizeAttributes.Mode = $Mode
        $VolumeAutosizeAttributes.NcController = $NcController
        $VolumeAutosizeAttributes.Reset = $Reset
        $VolumeAutosizeAttributes.ShrinkThresholdPercent = $ShrinkThresholdPercent
        $VolumeAutosizeAttributes.GrowThresholdPercentSpecified = $GrowThresholdPercentSpecified
        $VolumeAutosizeAttributes.IncrementPercentSpecified = $IncrementPercentSpecified
        $VolumeAutosizeAttributes.IncrementSizeSpecified = $IncrementSizeSpecified
        $VolumeAutosizeAttributes.IsEnabledSpecified = $IsEnabledSpecified
        $VolumeAutosizeAttributes.MaximumSizeSpecified = $MaximumSizeSpecified
        $VolumeAutosizeAttributes.MinimumSizeSpecified = $MinimumSizeSpecified
        $VolumeAutosizeAttributes.ResetSpecified = $ResetSpecified
        $VolumeAutosizeAttributes.ShrinkThresholdPercentSpecified = $ShrinkThresholdPercentSpecified

        $VolumeDirectoryAttributes = [DataONTAP.C.Types.Volume.VolumeDirectoryAttributes]::new()
        $VolumeDirectoryAttributes.I2pEnabled = $True
        $VolumeDirectoryAttributes.IndexDirEnabled = $IndexDirEnabled
        $VolumeDirectoryAttributes.MaxDirSize = $MaxDirSize
        $VolumeDirectoryAttributes.NcController = $NcController
        $VolumeDirectoryAttributes.RootDirGen = $RootDirGen
        $VolumeDirectoryAttributes.I2pEnabledSpecified = $True
        $VolumeDirectoryAttributes.IndexDirEnabledSpecified = $IndexDirEnabledSpecified
        $VolumeDirectoryAttributes.MaxDirSizeSpecified = $MaxDirSizeSpecified
        $VolumeDirectoryAttributes.RootDirGenSpecified = $RootDirGenSpecified

        $VolumeExportAttributes = [DataONTAP.C.Types.Volume.VolumeExportAttributes]::new()
        $VolumeExportAttributes.NcController = $NcController
        $VolumeExportAttributes.Policy = $Policy

        $VolumeHybridCacheAttributes = [DataONTAP.C.Types.Volume.VolumeHybridCacheAttributes]::new()
        $VolumeHybridCacheAttributes.CacheRetentionPriority = $CacheRetentionPriority
        $VolumeHybridCacheAttributes.CachingPolicy = $CachingPolicy
        $VolumeHybridCacheAttributes.Eligibility = $Eligibility
        $VolumeHybridCacheAttributes.NcController = $NcController
        $VolumeHybridCacheAttributes.WriteCacheIneligibilityReason = $WriteCacheIneligibilityReason
        
        $VolumeIdAttributes = [DataONTAP.C.Types.Volume.VolumeIdAttributes]::new()
        $VolumeIdAttributes.AggrList = $AggrList
        $VolumeIdAttributes.Comment = $Comment
        $VolumeIdAttributes.ConstituentRole = $ConstituentRole
        $VolumeIdAttributes.ContainingAggregateName = $ContainingAggregateName
        $VolumeIdAttributes.ContainingAggregateUuid = $ContainingAggregateUuid
        $VolumeIdAttributes.CreationTime = $CreationTime
        $VolumeIdAttributes.Dsid = $Dsid
        $VolumeIdAttributes.FlexgroupIndex = $FlexgroupIndex
        $VolumeIdAttributes.FlexgroupMsid = $FlexgroupMsid
        $VolumeIdAttributes.FlexgroupUuid = $FlexgroupUuid
        $VolumeIdAttributes.Fsid = $Fsid
        $VolumeIdAttributes.InstanceUuid = $InstanceUuid
        $VolumeIdAttributes.JunctionParentName = $JunctionParentName
        $VolumeIdAttributes.JunctionPath = $JunctionPath
        $VolumeIdAttributes.Msid = $Msid
        $VolumeIdAttributes.Name = $Name
        $VolumeIdAttributes.NameOrdinal = $NameOrdinal
        $VolumeIdAttributes.NcController = $NcController
        $VolumeIdAttributes.Node = $Node
        $VolumeIdAttributes.Nodes = $Nodes
        $VolumeIdAttributes.OwningVserverName = $OwningVserverName
        $VolumeIdAttributes.OwningVserverUuid = $OwningVserverUuid
        $VolumeIdAttributes.ProvenanceUuid = $ProvenanceUuid
        $VolumeIdAttributes.Style = $Style
        $VolumeIdAttributes.StyleExtended = $StyleExtended
        $VolumeIdAttributes.Type = $Type
        $VolumeIdAttributes.Uuid = $Uuid
        $VolumeIdAttributes.CreationTimeSpecified = $CreationTimeSpecified
        $VolumeIdAttributes.DsidSpecified = $DsidSpecified
        $VolumeIdAttributes.FlexgroupIndexSpecified = $FlexgroupIndexSpecified
        $VolumeIdAttributes.FlexgroupMsidSpecified = $FlexgroupMsidSpecified

        $VolumeInodeAttributes = [DataONTAP.C.Types.Volume.VolumeInodeAttributes]::new()
        $VolumeInodeAttributes.BlockType = $BlockType
        $VolumeInodeAttributes.FilesPrivateUsed = $FilesPrivateUsed
        $VolumeInodeAttributes.FilesTotal = $FilesTotal
        $VolumeInodeAttributes.FilesUsed = $FilesUsed
        $VolumeInodeAttributes.InodefilePrivateCapacity = $InodefilePrivateCapacity
        $VolumeInodeAttributes.InodefilePublicCapacity = $InodefilePublicCapacity
        $VolumeInodeAttributes.InofileVersion = $InofileVersion
        $VolumeInodeAttributes.NcController = $NcController
        $VolumeInodeAttributes.FilesPrivateUsedSpecified = $FilesPrivateUsedSpecified
        $VolumeInodeAttributes.FilesTotalSpecified = $FilesTotalSpecified
        $VolumeInodeAttributes.FilesUsedSpecified = $FilesUsedSpecified
        $VolumeInodeAttributes.InodefilePrivateCapacitySpecified = $InodefilePrivateCapacitySpecified
        $VolumeInodeAttributes.InodefilePublicCapacitySpecified = $InodefilePublicCapacitySpecified
        $VolumeInodeAttributes.InofileVersionSpecified = $InofileVersionSpecified

        $VolumeLanguageAttributes = [DataONTAP.C.Types.Volume.VolumeLanguageAttributes]::new()
        $VolumeLanguageAttributes.IsConvertUcodeEnabled = $IsConvertUcodeEnabled
        $VolumeLanguageAttributes.IsCreateUcodeEnabled = $IsCreateUcodeEnabled
        $VolumeLanguageAttributes.Language = $Language
        $VolumeLanguageAttributes.LanguageCode = $LanguageCode
        $VolumeLanguageAttributes.NcController = $NcController
        $VolumeLanguageAttributes.NfsCharacterSet = $NfsCharacterSet
        $VolumeLanguageAttributes.OemCharacterSet = $OemCharacterSet
        $VolumeLanguageAttributes.IsConvertUcodeEnabledSpecified = $IsConvertUcodeEnabledSpecified
        $VolumeLanguageAttributes.IsCreateUcodeEnabledSpecified = $IsCreateUcodeEnabledSpecified

        $VolumeMirrorAttributes = [DataONTAP.C.Types.Volume.VolumeMirrorAttributes]::new()
        $VolumeMirrorAttributes.IsDataProtectionMirror = $IsDataProtectionMirror
        $VolumeMirrorAttributes.IsLoadSharingMirror = $IsLoadSharingMirror
        $VolumeMirrorAttributes.IsMoveMirror = $IsMoveMirror
        $VolumeMirrorAttributes.IsReplicaVolume = $IsReplicaVolume
        $VolumeMirrorAttributes.MirrorTransferInProgress = $MirrorTransferInProgress
        $VolumeMirrorAttributes.NcController = $NcController
        $VolumeMirrorAttributes.RedirectSnapshotId = $RedirectSnapshotId
        $VolumeMirrorAttributes.IsDataProtectionMirrorSpecified = $IsDataProtectionMirrorSpecified
        $VolumeMirrorAttributes.IsLoadSharingMirrorSpecified = $IsLoadSharingMirrorSpecified
        $VolumeMirrorAttributes.IsMoveMirrorSpecified = $IsMoveMirrorSpecified
        $VolumeMirrorAttributes.IsReplicaVolumeSpecified = $IsReplicaVolumeSpecified
        $VolumeMirrorAttributes.MirrorTransferInProgressSpecified = $MirrorTransferInProgressSpecified
        $VolumeMirrorAttributes.RedirectSnapshotIdSpecified = $RedirectSnapshotIdSpecified

        $VolumePerformanceAttributes = [DataONTAP.C.Types.Volume.VolumePerformanceAttributes]::new()
        $VolumePerformanceAttributes.ExtentEnabled = $ExtentEnabled
        $VolumePerformanceAttributes.FcDelegsEnabled = $FcDelegsEnabled
        $VolumePerformanceAttributes.IsAtimeUpdateEnabled = $IsAtimeUpdateEnabled
        $VolumePerformanceAttributes.MaxWriteAllocBlocks = $MaxWriteAllocBlocks
        $VolumePerformanceAttributes.MinimalReadAhead = $MinimalReadAhead
        $VolumePerformanceAttributes.NcController = $NcController
        $VolumePerformanceAttributes.ReadRealloc = $ReadRealloc
        $VolumePerformanceAttributes.FcDelegsEnabledSpecified = $FcDelegsEnabledSpecified
        $VolumePerformanceAttributes.IsAtimeUpdateEnabledSpecified = $IsAtimeUpdateEnabledSpecified
        $VolumePerformanceAttributes.MaxWriteAllocBlocksSpecified = $MaxWriteAllocBlocksSpecified
        $VolumePerformanceAttributes.MinimalReadAheadSpecified = $MinimalReadAheadSpecified

        $VolumeSecurityAttributes = [DataONTAP.C.Types.Volume.VolumeSecurityAttributes]::new()
        $VolumeSecurityAttributes.NcController = $NcController
        $VolumeSecurityAttributes.Style = $Style

        $VolumeSisAttributes = [DataONTAP.C.Types.Volume.VolumeSisAttributes]::new()
        $VolumeSisAttributes.CompressionSpaceSaved = $CompressionSpaceSaved
        $VolumeSisAttributes.DeduplicationSpaceSaved = $DeduplicationSpaceSaved
        $VolumeSisAttributes.DeduplicationSpaceShared = $DeduplicationSpaceShared
        $VolumeSisAttributes.IsSisLoggingEnabled = $IsSisLoggingEnabled
        $VolumeSisAttributes.IsSisStateEnabled = $IsSisStateEnabled
        $VolumeSisAttributes.IsSisVolume = $IsSisVolume
        $VolumeSisAttributes.NcController = $NcController
        $VolumeSisAttributes.PercentageCompressionSpaceSaved = $PercentageCompressionSpaceSaved
        $VolumeSisAttributes.PercentageDeduplicationSpaceSaved = $PercentageDeduplicationSpaceSaved
        $VolumeSisAttributes.PercentageTotalSpaceSaved = $PercentageTotalSpaceSaved
        $VolumeSisAttributes.TotalSpaceSaved = $TotalSpaceSaved
        $VolumeSisAttributes.CompressionSpaceSavedSpecified = $CompressionSpaceSavedSpecified
        $VolumeSisAttributes.DeduplicationSpaceSavedSpecified = $DeduplicationSpaceSavedSpecified
        $VolumeSisAttributes.IsSisLoggingEnabledSpecified = $IsSisLoggingEnabledSpecified
        $VolumeSisAttributes.IsSisStateEnabledSpecified = $IsSisStateEnabledSpecified
        $VolumeSisAttributes.IsSisVolumeSpecified = $IsSisVolumeSpecified
        $VolumeSisAttributes.PercentageCompressionSpaceSavedSpecified = $PercentageCompressionSpaceSavedSpecified
        $VolumeSisAttributes.PercentageDeduplicationSpaceSavedSpecified = $PercentageDeduplicationSpaceSavedSpecified
        $VolumeSisAttributes.PercentageTotalSpaceSavedSpecified = $PercentageTotalSpaceSavedSpecified
        $VolumeSisAttributes.TotalSpaceSavedSpecified = $TotalSpaceSavedSpecified

        $VolumeSnaplockAttributes = [DataONTAP.C.Types.Volume.VolumeSnaplockAttributes]::new()
        $VolumeSnaplockAttributes.NcController = $NcController
        $VolumeSnaplockAttributes.SnaplockType = $SnaplockType

        $VolumeSnapshotAttributes = [DataONTAP.C.Types.Volume.VolumeSnapshotAttributes]::new()
        $VolumeSnapshotAttributes.AutoSnapshotsEnabled = $AutoSnapshotsEnabled
        $VolumeSnapshotAttributes.NcController = $NcController
        $VolumeSnapshotAttributes.SnapdirAccessEnabled = $SnapdirAccessEnabled
        $VolumeSnapshotAttributes.SnapshotCloneDependencyEnabled = $SnapshotCloneDependencyEnabled
        $VolumeSnapshotAttributes.SnapshotCount = $SnapshotCount
        $VolumeSnapshotAttributes.SnapshotPolicy = $SnapshotPolicy
        $VolumeSnapshotAttributes.AutoSnapshotsEnabledSpecified = $AutoSnapshotsEnabledSpecified
        $VolumeSnapshotAttributes.SnapdirAccessEnabledSpecified = $SnapdirAccessEnabledSpecified
        $VolumeSnapshotAttributes.SnapshotCloneDependencyEnabledSpecified = $SnapshotCloneDependencyEnabledSpecified
        $VolumeSnapshotAttributes.SnapshotCountSpecified = $SnapshotCountSpecified

        $VolumeSnapshotAutodeleteAttributes = [DataONTAP.C.Types.Volume.VolumeSnapshotAutodeleteAttributes]::new()
        $VolumeSnapshotAutodeleteAttributes.Commitment = $Commitment
        $VolumeSnapshotAutodeleteAttributes.DeferDelete = $DeferDelete
        $VolumeSnapshotAutodeleteAttributes.DeleteOrder = $DeleteOrder
        $VolumeSnapshotAutodeleteAttributes.DestroyList = $DestroyList
        $VolumeSnapshotAutodeleteAttributes.IsAutodeleteEnabled = $IsAutodeleteEnabled
        $VolumeSnapshotAutodeleteAttributes.NcController = $NcController
        $VolumeSnapshotAutodeleteAttributes.Prefix = $Prefix
        $VolumeSnapshotAutodeleteAttributes.TargetFreeSpace = $TargetFreeSpace
        $VolumeSnapshotAutodeleteAttributes.Trigger = $Trigger
        $VolumeSnapshotAutodeleteAttributes.IsAutodeleteEnabledSpecified = $IsAutodeleteEnabledSpecified
        $VolumeSnapshotAutodeleteAttributes.TargetFreeSpaceSpecified = $TargetFreeSpaceSpecified

        $VolumeSpaceAttributes = [DataONTAP.C.Types.Volume.VolumeSpaceAttributes]::new()
        $VolumeSpaceAttributes.FilesystemSize = $FilesystemSize
        $VolumeSpaceAttributes.IsFilesysSizeFixed = $IsFilesysSizeFixed
        $VolumeSpaceAttributes.IsSpaceGuaranteeEnabled = $IsSpaceGuaranteeEnabled
        $VolumeSpaceAttributes.IsSpaceSloEnabled = $IsSpaceSloEnabled
        $VolumeSpaceAttributes.MaxConstituentSize = $MaxConstituentSize
        $VolumeSpaceAttributes.NcController = $NcController
        $VolumeSpaceAttributes.OverwriteReserve = $OverwriteReserve
        $VolumeSpaceAttributes.OverwriteReserveRequired = $OverwriteReserveRequired
        $VolumeSpaceAttributes.OverwriteReserveUsed = $OverwriteReserveUsed
        $VolumeSpaceAttributes.OverwriteReserveUsedActual = $OverwriteReserveUsedActual
        $VolumeSpaceAttributes.PercentageFractionalReserve = $PercentageFractionalReserve
        $VolumeSpaceAttributes.PercentageSizeUsed = $PercentageSizeUsed
        $VolumeSpaceAttributes.PercentageSnapshotReserve = $PercentageSnapshotReserve
        $VolumeSpaceAttributes.PercentageSnapshotReserveUsed = $PercentageSnapshotReserveUsed
        $VolumeSpaceAttributes.PhysicalUsed = $PhysicalUsed
        $VolumeSpaceAttributes.PhysicalUsedPercent = $PhysicalUsedPercent
        $VolumeSpaceAttributes.Size = $Size
        $VolumeSpaceAttributes.SizeAvailable = $SizeAvailable
        $VolumeSpaceAttributes.SizeAvailableForSnapshots = $SizeAvailableForSnapshots
        $VolumeSpaceAttributes.SizeTotal = $SizeTotal
        $VolumeSpaceAttributes.SizeUsed = $SizeUsed
        $VolumeSpaceAttributes.SizeUsedBySnapshots = $SizeUsedBySnapshots
        $VolumeSpaceAttributes.SnapshotReserveSize = $SnapshotReserveSize
        $VolumeSpaceAttributes.SpaceFullThresholdPercent = $SpaceFullThresholdPercent
        $VolumeSpaceAttributes.SpaceGuarantee = $SpaceGuarantee
        $VolumeSpaceAttributes.SpaceMgmtOptionTryFirst = $SpaceMgmtOptionTryFirst
        $VolumeSpaceAttributes.SpaceNearlyFullThresholdPercent = $SpaceNearlyFullThresholdPercent
        $VolumeSpaceAttributes.SpaceSlo = $SpaceSlo
        $VolumeSpaceAttributes.FilesystemSizeSpecified = $FilesystemSizeSpecified
        $VolumeSpaceAttributes.IsFilesysSizeFixedSpecified = $IsFilesysSizeFixedSpecified
        $VolumeSpaceAttributes.IsSpaceGuaranteeEnabledSpecified = $IsSpaceGuaranteeEnabledSpecified
        $VolumeSpaceAttributes.OverwriteReserveRequiredSpecified = $OverwriteReserveRequiredSpecified
        $VolumeSpaceAttributes.OverwriteReserveSpecified = $OverwriteReserveSpecified
        $VolumeSpaceAttributes.OverwriteReserveUsedActualSpecified = $OverwriteReserveUsedActualSpecified
        $VolumeSpaceAttributes.OverwriteReserveUsedSpecified = $OverwriteReserveUsedSpecified
        $VolumeSpaceAttributes.PercentageFractionalReserveSpecified = $PercentageFractionalReserveSpecified
        $VolumeSpaceAttributes.PercentageSizeUsedSpecified = $PercentageSizeUsedSpecified
        $VolumeSpaceAttributes.PercentageSnapshotReserveSpecified = $PercentageSnapshotReserveSpecified
        $VolumeSpaceAttributes.PercentageSnapshotReserveUsedSpecified = $PercentageSnapshotReserveUsedSpecified
        $VolumeSpaceAttributes.PhysicalUsedPercentSpecified = $PhysicalUsedPercentSpecified
        $VolumeSpaceAttributes.PhysicalUsedSpecified = $PhysicalUsedSpecified
        $VolumeSpaceAttributes.SizeAvailableForSnapshotsSpecified = $SizeAvailableForSnapshotsSpecified
        $VolumeSpaceAttributes.SizeAvailableSpecified = $SizeAvailableSpecified
        $VolumeSpaceAttributes.SizeSpecified = $SizeSpecified
        $VolumeSpaceAttributes.SizeTotalSpecified = $SizeTotalSpecified
        $VolumeSpaceAttributes.SizeUsedBySnapshotsSpecified = $SizeUsedBySnapshotsSpecified
        $VolumeSpaceAttributes.SizeUsedSpecified = $SizeUsedSpecified
        $VolumeSpaceAttributes.SnapshotReserveSizeSpecified = $SnapshotReserveSizeSpecified
        $VolumeSpaceAttributes.SpaceFullThresholdPercentSpecified = $SpaceFullThresholdPercentSpecified
        $VolumeSpaceAttributes.SpaceNearlyFullThresholdPercentSpecified = $SpaceNearlyFullThresholdPercentSpecified

        $VolumeStateAttributes = [DataONTAP.C.Types.Volume.VolumeStateAttributes]::new()
        $VolumeStateAttributes.BecomeNodeRootAfterReboot = $BecomeNodeRootAfterReboot
        $VolumeStateAttributes.ForceNvfailOnDr = $ForceNvfailOnDr
        $VolumeStateAttributes.IgnoreInconsistent = $IgnoreInconsistent
        $VolumeStateAttributes.InNvfailedState = $InNvfailedState
        $VolumeStateAttributes.IsClusterVolume = $IsClusterVolume
        $VolumeStateAttributes.IsConstituent = $IsConstituent
        $VolumeStateAttributes.IsFlexgroup = $IsFlexgroup
        $VolumeStateAttributes.IsInconsistent = $IsInconsistent
        $VolumeStateAttributes.IsInvalid = $IsInvalid
        $VolumeStateAttributes.IsJunctionActive = $IsJunctionActive
        $VolumeStateAttributes.IsMoving = $IsMoving
        $VolumeStateAttributes.IsNodeRoot = $IsNodeRoot
        $VolumeStateAttributes.IsNvfailEnabled = $IsNvfailEnabled
        $VolumeStateAttributes.IsQuiescedInMemory = $IsQuiescedInMemory
        $VolumeStateAttributes.IsQuiescedOnDisk = $IsQuiescedOnDisk
        $VolumeStateAttributes.IsUnrecoverable = $IsUnrecoverable
        $VolumeStateAttributes.IsVolumeInCutover = $IsVolumeInCutover
        $VolumeStateAttributes.IsVserverRoot = $IsVserverRoot
        $VolumeStateAttributes.NcController = $NcController
        $VolumeStateAttributes.State = $State
        $VolumeStateAttributes.BecomeNodeRootAfterRebootSpecified = $BecomeNodeRootAfterRebootSpecified
        $VolumeStateAttributes.ForceNvfailOnDrSpecified = $ForceNvfailOnDrSpecified
        $VolumeStateAttributes.IgnoreInconsistentSpecified = $IgnoreInconsistentSpecified
        $VolumeStateAttributes.InNvfailedStateSpecified = $InNvfailedStateSpecified
        $VolumeStateAttributes.IsClusterVolumeSpecified = $IsClusterVolumeSpecified
        $VolumeStateAttributes.IsConstituentSpecified = $IsConstituentSpecified
        $VolumeStateAttributes.IsFlexgroupSpecified = $IsFlexgroupSpecified
        $VolumeStateAttributes.IsHealthySpecified = $IsHealthySpecified
        $VolumeStateAttributes.IsInconsistentSpecified = $IsInconsistentSpecified
        $VolumeStateAttributes.IsInvalidSpecified = $IsInvalidSpecified
        $VolumeStateAttributes.IsJunctionActiveSpecified = $IsJunctionActiveSpecified
        $VolumeStateAttributes.IsMovingSpecified = $IsMovingSpecified
        $VolumeStateAttributes.IsNodeRootSpecified = $IsNodeRootSpecified
        $VolumeStateAttributes.IsNvfailEnabledSpecified = $IsNvfailEnabledSpecified
        $VolumeStateAttributes.IsQuiescedInMemorySpecified = $IsQuiescedInMemorySpecified
        $VolumeStateAttributes.IsQuiescedOnDiskSpecified = $IsQuiescedOnDiskSpecified
        $VolumeStateAttributes.IsUnrecoverableSpecified = $IsUnrecoverableSpecified
        $VolumeStateAttributes.IsVolumeInCutoverSpecified = $IsVolumeInCutoverSpecified
        $VolumeStateAttributes.IsVserverRootSpecified = $IsVserverRootSpecified

        $VolumeTransitionAttributes = [DataONTAP.C.Types.Volume.VolumeTransitionAttributes]::new()
        $VolumeTransitionAttributes.IsCftPrecommit = $IsCftPrecommit
        $VolumeTransitionAttributes.IsCopiedForTransition = $IsCopiedForTransition
        $VolumeTransitionAttributes.IsTransitioned = $IsTransitioned
        $VolumeTransitionAttributes.NcController = $NcController
        $VolumeTransitionAttributes.TransitionBehavior = $TransitionBehavior
        $VolumeTransitionAttributes.IsCftPrecommitSpecified = $IsCftPrecommitSpecified
        $VolumeTransitionAttributes.IsCopiedForTransitionSpecified = $IsCopiedForTransitionSpecified
        $VolumeTransitionAttributes.IsTransitionedSpecified = $IsTransitionedSpecified

        $returnObj = [DataONTAP.C.Types.Volume.VolumeAttributes]::new()
        $returnObj.Name = 'Exists_root'
        $returnObj.NcController = $NcController
        $returnObj.VolumeAntivirusAttributes = $VolumeAntivirusAttributes
        $returnObj.VolumeAutobalanceAttributes = $VolumeAutobalanceAttributes
        $returnObj.VolumeAutosizeAttributes = $VolumeAutosizeAttributes
        $returnObj.VolumeDirectoryAttributes = $VolumeDirectoryAttributes
        $returnObj.VolumeExportAttributes = $VolumeExportAttributes
        $returnObj.VolumeHybridCacheAttributes = $VolumeHybridCacheAttributes
        $returnObj.VolumeIdAttributes = $VolumeIdAttributes
        $returnObj.VolumeInodeAttributes = $VolumeInodeAttributes
        $returnObj.VolumeLanguageAttributes = $VolumeLanguageAttributes
        $returnObj.VolumeMirrorAttributes = $VolumeMirrorAttributes
        $returnObj.VolumePerformanceAttributes = $VolumePerformanceAttributes
        $returnObj.VolumeSecurityAttributes = $VolumeSecurityAttributes
        $returnObj.VolumeSisAttributes = $VolumeSisAttributes
        $returnObj.VolumeSnaplockAttributes = $VolumeSnaplockAttributes
        $returnObj.VolumeSnapshotAttributes = $VolumeSnapshotAttributes
        $returnObj.VolumeSnapshotAutodeleteAttributes = $VolumeSnapshotAutodeleteAttributes
        $returnObj.VolumeSpaceAttributes = $VolumeSpaceAttributes
        $returnObj.VolumeStateAttributes = $VolumeStateAttributes
        $returnObj.VolumeTransitionAttributes = $VolumeTransitionAttributes
        return $returnObj
    }
}
function Dismount-NcVol
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Volume.VolumeAttributes] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Force,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    New-MockNcVol -Name $Name -Vserver $VserverContext
}
function Get-NcVol
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Volume.VolumeAttributes] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Name,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Aggregate,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Vserver,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch]$Template,
        [Parameter( ParameterSetName = 'Template' )]
        [switch]$Fill,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Volume.VolumeAttributes]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Volume.VolumeAttributes]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    New-MockNcVol -Name $Name -Vserver $VserverContext -Aggregate $Aggregate
}
function Mount-NcVol
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Volume.VolumeAttributes] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$JunctionPath,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [System.Nullable[bool]]$JunctionActive,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [System.Nullable[bool]]$ExportPolicyOverride,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    New-MockNcVol -Name $Name -Vserver $VserverContext -JunctionPath $JunctionPath -JunctionActive $JunctionActive
}
function New-NcVol
{
    [CmdletBinding( DefaultParameterSetName = 'Flexvol', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Volume.VolumeAttributes], [DataONTAP.C.PowerShell.SDK.Cmdlets.JobStartResult] )]
    param(
        [Parameter( ParameterSetName = 'Flexvol', Mandatory )]
        [Parameter( ParameterSetName = 'FlexGroup', Mandatory )]
        [Parameter( ParameterSetName = 'Async', Mandatory )]
        [Parameter( ParameterSetName = 'InfiniteVolume', Mandatory )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$Name,
        [Parameter( ParameterSetName = 'Flexvol', Mandatory )]
        [Parameter( ParameterSetName = 'Async', Mandatory )]
        [Parameter( ParameterSetName = 'Constituent', Mandatory )]
        [string]$Aggregate,
        [Parameter( ParameterSetName = 'FlexGroup', Mandatory )]
        [string]$AggregateList,
        [Parameter( ParameterSetName = 'Flexvol', Mandatory )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent', Mandatory )]
        [string]$JunctionPath,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$Comment,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$AntivirusOnAccessPolicy,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$ExportPolicy,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$FlexCacheCachePolicy,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$FlexCacheFillPolicy,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$FlexCacheOriginVolume,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [System.Nullable[int]]$GroupId,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [System.Nullable[bool]]$IndexDirectoryFormat,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [System.Nullable[bool]]$JunctionActive,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [System.Nullable[decimal]]$MaxDirectorySize,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [System.Nullable[bool]]$NvFailEnabled,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$SecurityStyle,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$SnapshotPolicy,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$SpaceReserve,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$State,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$Type,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$UnixPermissions,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [System.Nullable[int]]$UserId,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [System.Nullable[bool]]$VserverRoot,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [System.Nullable[int]]$SnapshotReserve,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [System.Nullable[int]]$VmAlignSector,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$VmAlignSuffix,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$QosPolicyGroup,
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$ConstituentRole,
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$StorageService,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [string]$CachingPolicy,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Async' )]
        [switch]$ExcludedFromAutobalance,
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [switch]$InfiniteVolume,
        [Parameter( ParameterSetName = 'FlexGroup', Mandatory )]
        [switch]$FlexGroupVolume,
        [Parameter( ParameterSetName = 'Async', Mandatory )]
        [switch]$Async,
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [string]$NamespaceAggregate,
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [string]$MaxNamespaceConstituentSize,
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [string]$MaxDataConstituentSize,
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [string]$NamespaceMirrorAggregate,
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [string]$DataAggregate,
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [switch]$EnableSnapdiff,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$Language,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Async' )]
        [string]$EfficiencyPolicy,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [string]$CacheRetentionPriority,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Async' )]
        [string]$SpaceSlo,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Async' )]
        [string]$VserverDrProtection,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [switch]$Encrypt,
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [System.Nullable[uint64]]$AggregateMultiplier,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$ExtentSize,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$TieringPolicy,
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [string]$AutoProvisionAs,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$QosAdaptivePolicyGroupName,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller,
        [Parameter( ParameterSetName = 'Flexvol', Mandatory )]
        [Parameter( ParameterSetName = 'FlexGroup' )]
        [Parameter( ParameterSetName = 'Async' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'Constituent', Mandatory )]
        [string]$Size
    )
    New-MockNcVol @PSBoundParameters
}
function Remove-NcVol
{
    [CmdletBinding( DefaultParameterSetName = 'Flexvol', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.PowerShell.SDK.Cmdlets.JobStartResult] )]
    param(
        [Parameter( ParameterSetName = 'Flexvol', Mandatory )]
        [Parameter( ParameterSetName = 'InfiniteVolume', Mandatory )]
        [Parameter( ParameterSetName = 'FlexGroupVolume', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = 'InfiniteVolume', Mandatory )]
        [switch]$InfiniteVolume,
        [Parameter( ParameterSetName = 'FlexGroupVolume', Mandatory )]
        [switch]$FlexGroupVolume,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'FlexGroupVolume' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'FlexGroupVolume' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    New-MockNcJobStartResults
}
function Rename-NcVol
{
    [CmdletBinding( DefaultParameterSetName = 'Flexvol', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Volume.VolumeAttributes], [DataONTAP.C.PowerShell.SDK.Cmdlets.JobStartResult] )]
    param(
        [Parameter( ParameterSetName = 'Flexvol', Mandatory )]
        [Parameter( ParameterSetName = 'InfiniteVolume', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = 'Flexvol', Mandatory )]
        [Parameter( ParameterSetName = 'InfiniteVolume', Mandatory )]
        [string]$NewName,
        [Parameter( ParameterSetName = 'InfiniteVolume', Mandatory )]
        [switch]$InfiniteVolume,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    New-MockNcVol -Name $NewName -Vserver $VserverContext
}
function Set-NcVol
{
    [CmdletBinding( DefaultParameterSetName = 'Flexvol', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Volume.VolumeAttributes], [DataONTAP.C.PowerShell.SDK.Cmdlets.JobStartResult] )]
    param(
        [Parameter( ParameterSetName = 'Flexvol', Mandatory )]
        [Parameter( ParameterSetName = 'InfiniteVolume', Mandatory )]
        [Parameter( ParameterSetName = 'FlexGroupVolume', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'FlexGroupVolume' )]
        [switch]$Online,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'FlexGroupVolume' )]
        [switch]$Offline,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'FlexGroupVolume' )]
        [switch]$Restricted,
        [Parameter( ParameterSetName = 'InfiniteVolume', Mandatory )]
        [switch]$InfiniteVolume,
        [Parameter( ParameterSetName = 'FlexGroupVolume', Mandatory )]
        [switch]$FlexGroupVolume,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'FlexGroupVolume' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'Flexvol' )]
        [Parameter( ParameterSetName = 'InfiniteVolume' )]
        [Parameter( ParameterSetName = 'FlexGroupVolume' )]
        [NetApp.Ontapi.Filer.C.NcController]$Controller
    )
    if ( $Offline )
    {
        return ( New-MockNcVol -Name $NewName -Vserver $VserverContext -State 'Offline' )
    }

    New-MockNcVol -Name $NewName -Vserver $VserverContext -State 'Online'
}