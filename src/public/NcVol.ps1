function New-MockNcVol
{
    [CmdletBinding()]
    param (
        # Provide a deserialized Volume object to be serialized and output correctly. For instance you can use Import-CliXML to and give the deserialized volume and they will be returned serialized correctly.
        [Parameter( ValueFromPipeline )]
        [ValidateNotNullOrEmpty()]
        [Object[]]
        $InputObject
    )
    process
    {

        if ( $InputObject )
        {
            foreach ( $_deserializedObject in $InputObject )
            {
                $mock = Resolve-DeserializedObject -InputObject $_deserializedObject -ReturnObjectType 'DataONTAP.C.Types.Volume.VolumeAttributes'
    
                return $mock

            }
        }
        else
        {

        }
    }
}
Function New-NcVol
{
    [CmdletBinding()]
    Param( [switch]$empty )
    $_mockVol = [DataONTAP.C.Types.Volume.VolumeAttributes]::new()
    if ( $empty )
    {
        # this is needed to mock the query objects
        $_mockVol.VolumeIdAttributes = [DataONTAP.C.Types.Volume.VolumeIdAttributes]::new()
        $_mockVol.VolumeStateAttributes = [DataONTAP.C.Types.Volume.VolumeStateAttributes]::new()
        return $_mockVol;
    }
    else
    {
        $VolumeAntivirusAttributes = [DataONTAP.C.Types.Volume.VolumeAntivirusAttributes]::new()
        $VolumeAntivirusAttributes.NcController = New-MockNcController
        $VolumeAntivirusAttributes.OnAccessPolicy = 'default'
        $VolumeAutobalanceAttributes = [DataONTAP.C.Types.Volume.VolumeAutobalanceAttributes]::new()
        $VolumeAutobalanceAttributes.IsAutobalanceEligible = $True
        $VolumeAutobalanceAttributes.NcController = 10.63.171.241
        $VolumeAutobalanceAttributes.IsAutobalanceEligibleSpecified = $True
        $VolumeAutosizeAttributes = [DataONTAP.C.Types.Volume.VolumeAutosizeAttributes]::new()
        $VolumeAutosizeAttributes.GrowThresholdPercent = 85
        $VolumeAutosizeAttributes.IncrementPercent =
        $VolumeAutosizeAttributes.IncrementSize =
        $VolumeAutosizeAttributes.IsEnabled = $False
        $VolumeAutosizeAttributes.MaximumSize = 1288486912
        $VolumeAutosizeAttributes.MinimumSize = 1073741824
        $VolumeAutosizeAttributes.Mode = 'off'
        $VolumeAutosizeAttributes.NcController = New-MockNcController
        $VolumeAutosizeAttributes.Reset =
        $VolumeAutosizeAttributes.ShrinkThresholdPercent = 50
        $VolumeAutosizeAttributes.GrowThresholdPercentSpecified = $True
        $VolumeAutosizeAttributes.IncrementPercentSpecified = $False
        $VolumeAutosizeAttributes.IncrementSizeSpecified = $False
        $VolumeAutosizeAttributes.IsEnabledSpecified = $True
        $VolumeAutosizeAttributes.MaximumSizeSpecified = $True
        $VolumeAutosizeAttributes.MinimumSizeSpecified = $True
        $VolumeAutosizeAttributes.ResetSpecified = $False
        $VolumeAutosizeAttributes.ShrinkThresholdPercentSpecified = $True
        $VolumeDirectoryAttributes = [DataONTAP.C.Types.Volume.VolumeDirectoryAttributes]::new()
        $VolumeDirectoryAttributes.I2pEnabled = $True
        $VolumeDirectoryAttributes.IndexDirEnabled =
        $VolumeDirectoryAttributes.MaxDirSize = 335544320
        $VolumeDirectoryAttributes.NcController = New-MockNcController
        $VolumeDirectoryAttributes.RootDirGen = 1385739523
        $VolumeDirectoryAttributes.I2pEnabledSpecified = $True
        $VolumeDirectoryAttributes.IndexDirEnabledSpecified = $False
        $VolumeDirectoryAttributes.MaxDirSizeSpecified = $True
        $VolumeDirectoryAttributes.RootDirGenSpecified = $True
        $VolumeExportAttributes = [DataONTAP.C.Types.Volume.VolumeExportAttributes]::new()
        $VolumeExportAttributes.NcController = New-MockNcController
        $VolumeExportAttributes.Policy = 'default'
        $VolumeHybridCacheAttributes = [DataONTAP.C.Types.Volume.VolumeHybridCacheAttributes]::new()
        $VolumeHybridCacheAttributes.CacheRetentionPriority = 'normal'
        $VolumeHybridCacheAttributes.CachingPolicy = 'auto'
        $VolumeHybridCacheAttributes.Eligibility = 'read_write'
        $VolumeHybridCacheAttributes.NcController = New-MockNcController
        $VolumeHybridCacheAttributes.WriteCacheIneligibilityReason =
        $VolumeIdAttributes = [DataONTAP.C.Types.Volume.VolumeIdAttributes]::new()
        $VolumeIdAttributes.AggrList =
        $VolumeIdAttributes.Comment =
        $VolumeIdAttributes.ConstituentRole =
        $VolumeIdAttributes.ContainingAggregateName = 'VICE08_aggr1'
        $VolumeIdAttributes.ContainingAggregateUuid = 'df7b4181-0bb9-4871-8f5a-c7932ae7c76e'
        $VolumeIdAttributes.CreationTime = 1471462538
        $VolumeIdAttributes.Dsid = 1717
        $VolumeIdAttributes.FlexgroupIndex =
        $VolumeIdAttributes.FlexgroupMsid =
        $VolumeIdAttributes.FlexgroupUuid =
        $VolumeIdAttributes.Fsid = 1717
        $VolumeIdAttributes.InstanceUuid = '57fa9d31-775c-4c2b-8b84-ddfce0b1f6e3'
        $VolumeIdAttributes.JunctionParentName =
        $VolumeIdAttributes.JunctionPath = '/'
        $VolumeIdAttributes.Msid = 2153160076
        $VolumeIdAttributes.Name = 'Exists_root'
        $VolumeIdAttributes.NameOrdinal = 'base'
        $VolumeIdAttributes.NcController = New-MockNcController
        $VolumeIdAttributes.Node = 'VICE-08'
        $VolumeIdAttributes.Nodes =
        $VolumeIdAttributes.OwningVserverName = 'Exists'
        $VolumeIdAttributes.OwningVserverUuid = 'c452ace5-64b1-11e6-ab82-00a0986e758d'
        $VolumeIdAttributes.ProvenanceUuid = '57fa9d31-775c-4c2b-8b84-ddfce0b1f6e3'
        $VolumeIdAttributes.Style = 'flex'
        $VolumeIdAttributes.StyleExtended = 'flexvol'
        $VolumeIdAttributes.Type = 'rw'
        $VolumeIdAttributes.Uuid = 'c6b63c06-64b1-11e6-a60f-00a0986e7e41'
        $VolumeIdAttributes.CreationTimeSpecified = $True
        $VolumeIdAttributes.DsidSpecified = $True
        $VolumeIdAttributes.FlexgroupIndexSpecified = $False
        $VolumeIdAttributes.FlexgroupMsidSpecified = $False
        $VolumeInodeAttributes = [DataONTAP.C.Types.Volume.VolumeInodeAttributes]::new()
        $VolumeInodeAttributes.BlockType = '64_bit'
        $VolumeInodeAttributes.FilesPrivateUsed = 502
        $VolumeInodeAttributes.FilesTotal = 31122
        $VolumeInodeAttributes.FilesUsed = 101
        $VolumeInodeAttributes.InodefilePrivateCapacity = 31122
        $VolumeInodeAttributes.InodefilePublicCapacity = 31122
        $VolumeInodeAttributes.InofileVersion = 4
        $VolumeInodeAttributes.NcController = New-MockNcController
        $VolumeInodeAttributes.FilesPrivateUsedSpecified = $True
        $VolumeInodeAttributes.FilesTotalSpecified = $True
        $VolumeInodeAttributes.FilesUsedSpecified = $True
        $VolumeInodeAttributes.InodefilePrivateCapacitySpecified = $True
        $VolumeInodeAttributes.InodefilePublicCapacitySpecified = $True
        $VolumeInodeAttributes.InofileVersionSpecified = $True
        $VolumeLanguageAttributes = [DataONTAP.C.Types.Volume.VolumeLanguageAttributes]::new()
        $VolumeLanguageAttributes.IsConvertUcodeEnabled = $True
        $VolumeLanguageAttributes.IsCreateUcodeEnabled = $True
        $VolumeLanguageAttributes.Language = 'en_US ( English ( US ) )'
        $VolumeLanguageAttributes.LanguageCode = 'en_us'
        $VolumeLanguageAttributes.NcController = New-MockNcController
        $VolumeLanguageAttributes.NfsCharacterSet = 'iso-8859-1|iso-8859-1|Thu Oct  1 18:00:53 EDT 1998'
        $VolumeLanguageAttributes.OemCharacterSet = 'cp437|cp437|Thu Oct  1 18:00:53 EDT 1998'
        $VolumeLanguageAttributes.IsConvertUcodeEnabledSpecified = $True
        $VolumeLanguageAttributes.IsCreateUcodeEnabledSpecified = $True
        $VolumeMirrorAttributes = [DataONTAP.C.Types.Volume.VolumeMirrorAttributes]::new()
        $VolumeMirrorAttributes.IsDataProtectionMirror = $False
        $VolumeMirrorAttributes.IsLoadSharingMirror = $False
        $VolumeMirrorAttributes.IsMoveMirror = $False
        $VolumeMirrorAttributes.IsReplicaVolume = $False
        $VolumeMirrorAttributes.MirrorTransferInProgress = $False
        $VolumeMirrorAttributes.NcController = New-MockNcController
        $VolumeMirrorAttributes.RedirectSnapshotId = 0
        $VolumeMirrorAttributes.IsDataProtectionMirrorSpecified = $True
        $VolumeMirrorAttributes.IsLoadSharingMirrorSpecified = $True
        $VolumeMirrorAttributes.IsMoveMirrorSpecified = $True
        $VolumeMirrorAttributes.IsReplicaVolumeSpecified = $True
        $VolumeMirrorAttributes.MirrorTransferInProgressSpecified = $True
        $VolumeMirrorAttributes.RedirectSnapshotIdSpecified = $True
        $VolumePerformanceAttributes = [DataONTAP.C.Types.Volume.VolumePerformanceAttributes]::new()
        $VolumePerformanceAttributes.ExtentEnabled = 'off'
        $VolumePerformanceAttributes.FcDelegsEnabled = $True
        $VolumePerformanceAttributes.IsAtimeUpdateEnabled = $True
        $VolumePerformanceAttributes.MaxWriteAllocBlocks = 0
        $VolumePerformanceAttributes.MinimalReadAhead = $False
        $VolumePerformanceAttributes.NcController = New-MockNcController
        $VolumePerformanceAttributes.ReadRealloc = 'off'
        $VolumePerformanceAttributes.FcDelegsEnabledSpecified = $True
        $VolumePerformanceAttributes.IsAtimeUpdateEnabledSpecified = $True
        $VolumePerformanceAttributes.MaxWriteAllocBlocksSpecified = $True
        $VolumePerformanceAttributes.MinimalReadAheadSpecified = $True
        $VolumeSecurityAttributes = [DataONTAP.C.Types.Volume.VolumeSecurityAttributes]::new()
        $VolumeSecurityAttributes.NcController = New-MockNcController
        $VolumeSecurityAttributes.Style = 'unix'
        $VolumeSisAttributes = [DataONTAP.C.Types.Volume.VolumeSisAttributes]::new()
        $VolumeSisAttributes.CompressionSpaceSaved = 0
        $VolumeSisAttributes.DeduplicationSpaceSaved = 0
        $VolumeSisAttributes.DeduplicationSpaceShared = 0
        $VolumeSisAttributes.IsSisLoggingEnabled = $False
        $VolumeSisAttributes.IsSisStateEnabled = $False
        $VolumeSisAttributes.IsSisVolume = $False
        $VolumeSisAttributes.NcController = New-MockNcController
        $VolumeSisAttributes.PercentageCompressionSpaceSaved = 0
        $VolumeSisAttributes.PercentageDeduplicationSpaceSaved = 0
        $VolumeSisAttributes.PercentageTotalSpaceSaved = 0
        $VolumeSisAttributes.TotalSpaceSaved = 0
        $VolumeSisAttributes.CompressionSpaceSavedSpecified = $True
        $VolumeSisAttributes.DeduplicationSpaceSavedSpecified = $True
        $VolumeSisAttributes.IsSisLoggingEnabledSpecified = $True
        $VolumeSisAttributes.IsSisStateEnabledSpecified = $True
        $VolumeSisAttributes.IsSisVolumeSpecified = $True
        $VolumeSisAttributes.PercentageCompressionSpaceSavedSpecified = $True
        $VolumeSisAttributes.PercentageDeduplicationSpaceSavedSpecified = $True
        $VolumeSisAttributes.PercentageTotalSpaceSavedSpecified = $True
        $VolumeSisAttributes.TotalSpaceSavedSpecified = $True
        $VolumeSnaplockAttributes = [DataONTAP.C.Types.Volume.VolumeSnaplockAttributes]::new()
        $VolumeSnaplockAttributes.NcController = New-MockNcController
        $VolumeSnaplockAttributes.SnaplockType = 'non_snaplock'
        $VolumeSnapshotAttributes = [DataONTAP.C.Types.Volume.VolumeSnapshotAttributes]::new()
        $VolumeSnapshotAttributes.AutoSnapshotsEnabled = $True
        $VolumeSnapshotAttributes.NcController = New-MockNcController
        $VolumeSnapshotAttributes.SnapdirAccessEnabled = $True
        $VolumeSnapshotAttributes.SnapshotCloneDependencyEnabled = $False
        $VolumeSnapshotAttributes.SnapshotCount = 10
        $VolumeSnapshotAttributes.SnapshotPolicy = 'default'
        $VolumeSnapshotAttributes.AutoSnapshotsEnabledSpecified = $True
        $VolumeSnapshotAttributes.SnapdirAccessEnabledSpecified = $True
        $VolumeSnapshotAttributes.SnapshotCloneDependencyEnabledSpecified = $True
        $VolumeSnapshotAttributes.SnapshotCountSpecified = $True
        $VolumeSnapshotAutodeleteAttributes = [DataONTAP.C.Types.Volume.VolumeSnapshotAutodeleteAttributes]::new()
        $VolumeSnapshotAutodeleteAttributes.Commitment = 'try'
        $VolumeSnapshotAutodeleteAttributes.DeferDelete = 'user_created'
        $VolumeSnapshotAutodeleteAttributes.DeleteOrder = 'oldest_first'
        $VolumeSnapshotAutodeleteAttributes.DestroyList = 'none'
        $VolumeSnapshotAutodeleteAttributes.IsAutodeleteEnabled = $False
        $VolumeSnapshotAutodeleteAttributes.NcController = New-MockNcController
        $VolumeSnapshotAutodeleteAttributes.Prefix = '( not specified )'
        $VolumeSnapshotAutodeleteAttributes.TargetFreeSpace = 20
        $VolumeSnapshotAutodeleteAttributes.Trigger = 'volume'
        $VolumeSnapshotAutodeleteAttributes.IsAutodeleteEnabledSpecified = $True
        $VolumeSnapshotAutodeleteAttributes.TargetFreeSpaceSpecified = $True
        $VolumeSpaceAttributes = [DataONTAP.C.Types.Volume.VolumeSpaceAttributes]::new()
        $VolumeSpaceAttributes.FilesystemSize = 1073741824
        $VolumeSpaceAttributes.IsFilesysSizeFixed = $False
        $VolumeSpaceAttributes.IsSpaceGuaranteeEnabled = $True
        $VolumeSpaceAttributes.IsSpaceSloEnabled = 'true'
        $VolumeSpaceAttributes.MaxConstituentSize =
        $VolumeSpaceAttributes.NcController = New-MockNcController
        $VolumeSpaceAttributes.OverwriteReserve = 0
        $VolumeSpaceAttributes.OverwriteReserveRequired = 0
        $VolumeSpaceAttributes.OverwriteReserveUsed = 0
        $VolumeSpaceAttributes.OverwriteReserveUsedActual = 0
        $VolumeSpaceAttributes.PercentageFractionalReserve = 100
        $VolumeSpaceAttributes.PercentageSizeUsed = 5
        $VolumeSpaceAttributes.PercentageSnapshotReserve = 5
        $VolumeSpaceAttributes.PercentageSnapshotReserveUsed = 6
        $VolumeSpaceAttributes.PhysicalUsed = 4517888
        $VolumeSpaceAttributes.PhysicalUsedPercent = 0
        $VolumeSpaceAttributes.Size = 1073741824
        $VolumeSpaceAttributes.SizeAvailable = 1018732544
        $VolumeSpaceAttributes.SizeAvailableForSnapshots = 1069223936
        $VolumeSpaceAttributes.SizeTotal = 1020055552
        $VolumeSpaceAttributes.SizeUsed = 1323008
        $VolumeSpaceAttributes.SizeUsedBySnapshots = 3194880
        $VolumeSpaceAttributes.SnapshotReserveSize = 53686272
        $VolumeSpaceAttributes.SpaceFullThresholdPercent = 98
        $VolumeSpaceAttributes.SpaceGuarantee = 'volume'
        $VolumeSpaceAttributes.SpaceMgmtOptionTryFirst = 'volume_grow'
        $VolumeSpaceAttributes.SpaceNearlyFullThresholdPercent = 95
        $VolumeSpaceAttributes.SpaceSlo = 'none'
        $VolumeSpaceAttributes.FilesystemSizeSpecified = $True
        $VolumeSpaceAttributes.IsFilesysSizeFixedSpecified = $True
        $VolumeSpaceAttributes.IsSpaceGuaranteeEnabledSpecified = $True
        $VolumeSpaceAttributes.OverwriteReserveRequiredSpecified = $True
        $VolumeSpaceAttributes.OverwriteReserveSpecified = $True
        $VolumeSpaceAttributes.OverwriteReserveUsedActualSpecified = $True
        $VolumeSpaceAttributes.OverwriteReserveUsedSpecified = $True
        $VolumeSpaceAttributes.PercentageFractionalReserveSpecified = $True
        $VolumeSpaceAttributes.PercentageSizeUsedSpecified = $True
        $VolumeSpaceAttributes.PercentageSnapshotReserveSpecified = $True
        $VolumeSpaceAttributes.PercentageSnapshotReserveUsedSpecified = $True
        $VolumeSpaceAttributes.PhysicalUsedPercentSpecified = $True
        $VolumeSpaceAttributes.PhysicalUsedSpecified = $True
        $VolumeSpaceAttributes.SizeAvailableForSnapshotsSpecified = $True
        $VolumeSpaceAttributes.SizeAvailableSpecified = $True
        $VolumeSpaceAttributes.SizeSpecified = $True
        $VolumeSpaceAttributes.SizeTotalSpecified = $True
        $VolumeSpaceAttributes.SizeUsedBySnapshotsSpecified = $True
        $VolumeSpaceAttributes.SizeUsedSpecified = $True
        $VolumeSpaceAttributes.SnapshotReserveSizeSpecified = $True
        $VolumeSpaceAttributes.SpaceFullThresholdPercentSpecified = $True
        $VolumeSpaceAttributes.SpaceNearlyFullThresholdPercentSpecified = $True
        $VolumeStateAttributes = [DataONTAP.C.Types.Volume.VolumeStateAttributes]::new()
        $VolumeStateAttributes.BecomeNodeRootAfterReboot = $False
        $VolumeStateAttributes.ForceNvfailOnDr = $False
        $VolumeStateAttributes.IgnoreInconsistent = $False
        $VolumeStateAttributes.InNvfailedState = $False
        $VolumeStateAttributes.IsClusterVolume = $True
        $VolumeStateAttributes.IsConstituent = $False
        $VolumeStateAttributes.IsFlexgroup = $False
        $VolumeStateAttributes.IsInconsistent = $False
        $VolumeStateAttributes.IsInvalid = $False
        $VolumeStateAttributes.IsJunctionActive = $True
        $VolumeStateAttributes.IsMoving = $False
        $VolumeStateAttributes.IsNodeRoot = $False
        $VolumeStateAttributes.IsNvfailEnabled = $False
        $VolumeStateAttributes.IsQuiescedInMemory = $False
        $VolumeStateAttributes.IsQuiescedOnDisk = $False
        $VolumeStateAttributes.IsUnrecoverable = $False
        $VolumeStateAttributes.IsVolumeInCutover = $False
        $VolumeStateAttributes.IsVserverRoot = $True
        $VolumeStateAttributes.NcController = New-MockNcController
        $VolumeStateAttributes.State = 'online'
        $VolumeStateAttributes.BecomeNodeRootAfterRebootSpecified = $True
        $VolumeStateAttributes.ForceNvfailOnDrSpecified = $True
        $VolumeStateAttributes.IgnoreInconsistentSpecified = $True
        $VolumeStateAttributes.InNvfailedStateSpecified = $True
        $VolumeStateAttributes.IsClusterVolumeSpecified = $True
        $VolumeStateAttributes.IsConstituentSpecified = $True
        $VolumeStateAttributes.IsFlexgroupSpecified = $True
        $VolumeStateAttributes.IsHealthySpecified = $False
        $VolumeStateAttributes.IsInconsistentSpecified = $True
        $VolumeStateAttributes.IsInvalidSpecified = $True
        $VolumeStateAttributes.IsJunctionActiveSpecified = $True
        $VolumeStateAttributes.IsMovingSpecified = $True
        $VolumeStateAttributes.IsNodeRootSpecified = $True
        $VolumeStateAttributes.IsNvfailEnabledSpecified = $True
        $VolumeStateAttributes.IsQuiescedInMemorySpecified = $True
        $VolumeStateAttributes.IsQuiescedOnDiskSpecified = $True
        $VolumeStateAttributes.IsUnrecoverableSpecified = $True
        $VolumeStateAttributes.IsVolumeInCutoverSpecified = $True
        $VolumeStateAttributes.IsVserverRootSpecified = $True
        $VolumeTransitionAttributes = [DataONTAP.C.Types.Volume.VolumeTransitionAttributes]::new()
        $VolumeTransitionAttributes.IsCftPrecommit = $False
        $VolumeTransitionAttributes.IsCopiedForTransition = $False
        $VolumeTransitionAttributes.IsTransitioned = $False
        $VolumeTransitionAttributes.NcController = New-MockNcController
        $VolumeTransitionAttributes.TransitionBehavior = 'none'
        $VolumeTransitionAttributes.IsCftPrecommitSpecified = $True
        $VolumeTransitionAttributes.IsCopiedForTransitionSpecified = $True
        $VolumeTransitionAttributes.IsTransitionedSpecified = $True

        $_mockVol = [DataONTAP.C.Types.Volume.VolumeAttributes]::new()
        $_mockVol.Name = 'Exists_root'
        $_mockVol.NcController = New-MockNcController
        $_mockVol.VolumeAntivirusAttributes = $VolumeAntivirusAttributes
        $_mockVol.VolumeAutobalanceAttributes = $VolumeAutobalanceAttributes
        $_mockVol.VolumeAutosizeAttributes = $VolumeAutosizeAttributes
        $_mockVol.VolumeDirectoryAttributes = $VolumeDirectoryAttributes
        $_mockVol.VolumeExportAttributes = $VolumeExportAttributes
        $_mockVol.VolumeHybridCacheAttributes = $VolumeHybridCacheAttributes
        $_mockVol.VolumeIdAttributes = $VolumeIdAttributes
        $_mockVol.VolumeInodeAttributes = $VolumeInodeAttributes
        $_mockVol.VolumeLanguageAttributes = $VolumeLanguageAttributes
        $_mockVol.VolumeMirrorAttributes = $VolumeMirrorAttributes
        $_mockVol.VolumePerformanceAttributes = $VolumePerformanceAttributes
        $_mockVol.VolumeSecurityAttributes = $VolumeSecurityAttributes
        $_mockVol.VolumeSisAttributes = $VolumeSisAttributes
        $_mockVol.VolumeSnaplockAttributes = $VolumeSnaplockAttributes
        $_mockVol.VolumeSnapshotAttributes = $VolumeSnapshotAttributes
        $_mockVol.VolumeSnapshotAutodeleteAttributes = $VolumeSnapshotAutodeleteAttributes
        $_mockVol.VolumeSpaceAttributes = $VolumeSpaceAttributes
        $_mockVol.VolumeStateAttributes = $VolumeStateAttributes
        $_mockVol.VolumeTransitionAttributes = $VolumeTransitionAttributes
        return $_mockVol
    }
}