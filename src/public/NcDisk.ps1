function New-MockNcDisk
{
    [CmdletBinding()]
    param (
        # Serialize an object from export-clixml back into an dataONTAP object.
        [Parameter( ValueFromPipeline )]
        [Object]
        $InputObject,
        $Shelf,
        $Bay = 16,
        $Position = 'present',
        [Int64]$RPM = 15000,
        [string]$FW = '0042',
        [string]$Model = 'x292',
        [String]$Aggregate,
        [string]$DiskName,
        [string]$DiskUid = '4E455441:50502020:56442D31:3030304D:422D465A:2D353230:30373831:34343030:00000000:00000000',
        $NcController,
        $Controller,
        [DataONTAP.C.Types.StorageInitiator.DiskPathInfo[]]$DiskPaths,
        [string]$DiskClass = 'performance',
        [string]$DiskType = 'SAS'
    )
    process
    {
        if ( $InputObject )
        {
            foreach ( $_deserializedObject in $InputObject )
            {
                $returnObject = Resolve-DeserializedObject -InputObject $_deserializedObject -ReturnObjectType 'DataONTAP.C.Types.StorageDisk.StorageDiskInfo'
    
                return $returnObject

            }
        }
        else
        {
            if ( $Controller )
            {
                $NcController = $Controller
            }
            else
            {
                $NcController = New-MockNcController
            }
            $mock = [DataONTAP.C.Types.StorageDisk.StorageDiskInfo]::new()
            $mock.Bay = $Bay
            $mock.Shelf = $Shelf
            $mock.Position = $Position
            $mock.RPM = $RPM
            $mock.Pool = $pool
            $mock.FW = $FW
            $mock.Model = $Model
            $mock.Aggregate = $Aggregate
            $mock.DiskInventoryInfo = [DataONTAP.C.Types.StorageDisk.DiskInventoryInfo]::new()
            $mock.DiskInventoryInfo.RPM = $RPM
            $mock.DiskInventoryInfo.DiskClass = $DiskClass
            $mock.DiskInventoryInfo.DiskType = $DiskType
            $mock.DiskMetroclusterInfo = [DataONTAP.C.Types.StorageDisk.DiskMetroclusterInfo]::new()
            $mock.DiskName = $DiskName
            $mock.DiskOwnershipInfo = [DataONTAP.C.Types.StorageDisk.DiskOwnershipInfo]::new()
            $mock.DiskPaths = $Paths
            $mock.DiskRaidInfo = [DataONTAP.C.Types.StorageDisk.DiskRaidInfo]::new()
            $mock.DiskStatsInfo = [DataONTAP.C.Types.StorageDisk.DiskStatsInfo]::new()
            $mock.DiskUid = $DiskUid
            $mock.Name = $DiskName
            $mock.NcController = $NcController

            return $mock
        }
    }
}
function Get-NcDisk
{
    param(

    )
    New-MockNcDisk
}