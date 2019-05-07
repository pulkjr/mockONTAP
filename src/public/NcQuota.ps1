function New-MockNcQuota
{
    param(
        $DiskLimit = '204800',
        $FileLimit = '10000',
        $NcController = 'cluster01',
        $PerformUserMapping,
        $PerformUserMappingSpecified = 'False',
        $Policy = 'default',
        $Qtree,
        $QuotaError,
        $QuotaTarget = '/vol/CifsVol/newqtree',
        $QuotaType = 'tree',
        $SoftDiskLimit = '5120',
        $SoftFileLimit = '5000',
        $Threshold = '10240',
        $Volume = 'CifsVol',
        $Vserver = 'TestSVM'
    )
    $returnObj = [DataONTAP.C.Types.Quota.QuotaEntry]::New()
    $returnObj.DiskLimit = $DiskLimit
    $returnObj.FileLimit = $FileLimit
    $returnObj.NcController = $NcController
    $returnObj.PerformUserMapping = $PerformUserMapping
    $returnObj.PerformUserMappingSpecified = $PerformUserMappingSpecified
    $returnObj.Policy = $Policy
    $returnObj.Qtree = $Qtree
    $returnObj.QuotaError = $QuotaError
    $returnObj.QuotaTarget = $QuotaTarget
    $returnObj.QuotaType = $QuotaType
    $returnObj.SoftDiskLimit = $SoftDiskLimit
    $returnObj.SoftFileLimit = $SoftFileLimit
    $returnObj.Threshold = $Threshold
    $returnObj.Volume = $Volume
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function New-MockNcQuotaStatus
{
    param(
        $NcController = 'cluster01',
        $PercentComplete,
        $PercentCompleteSpecified = 'False',
        $QuotaErrorMsgs,
        $Reason,
        $Status = 'on',
        $Substatus = 'none',
        $Volume = 'CifsVol',
        $Vserver = 'TestSVM'
    )
    $returnObj = [DataONTAP.C.Types.Quota.QuotaStatusAttributes]::New()
    $returnObj.NcController = $NcController
    $returnObj.PercentComplete = $PercentComplete
    $returnObj.PercentCompleteSpecified = $PercentCompleteSpecified
    $returnObj.QuotaErrorMsgs = $QuotaErrorMsgs
    $returnObj.Reason = $Reason
    $returnObj.Status = $Status
    $returnObj.Substatus = $Substatus
    $returnObj.Volume = $Volume
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function Get-NcQuota
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Quota.QuotaEntry] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Type,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Target,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Volume,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Qtree,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch]$Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Quota.QuotaEntry]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Quota.QuotaEntry]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    if ( $VserverContext )
    {
        $Vserver = $VserverContext
    }
    $param = @{
        Vserver     = $Vserver
        QuotaType   = $Type
        QuotaTarget = $Target
        Volume      = $Volume
        Qtree       = $Qtree
    }
    New-MockNcQuota @param
}
function Remove-NcQuota
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = 'User', Mandatory )]
        [string[]]$User,
        [Parameter( ParameterSetName = 'Group', Mandatory )]
        [string]$Group,
        [Parameter( ParameterSetName = 'Tree', Mandatory )]
        [string]$Path,
        [Parameter( ParameterSetName = 'User', Mandatory )]
        [Parameter( ParameterSetName = 'Group', Mandatory )]
        [Parameter( ParameterSetName = 'ZAPI', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$Qtree,
        [Parameter( ParameterSetName = 'ZAPI', Mandatory )]
        [string[]]$Target,
        [Parameter( ParameterSetName = 'ZAPI', Mandatory )]
        [string]$Type,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$Policy,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )

}
function Set-NcQuota
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Quota.QuotaEntry] )]
    param(
        [Parameter( ParameterSetName = 'User', Mandatory )]
        [string[]]$User,
        [Parameter( ParameterSetName = 'Group', Mandatory )]
        [string]$Group,
        [Parameter( ParameterSetName = 'Tree', Mandatory )]
        [string]$Path,
        [Parameter( ParameterSetName = 'User', Mandatory )]
        [Parameter( ParameterSetName = 'Group', Mandatory )]
        [Parameter( ParameterSetName = 'ZAPI', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$Qtree,
        [Parameter( ParameterSetName = 'ZAPI', Mandatory )]
        [string[]]$Target,
        [Parameter( ParameterSetName = 'ZAPI', Mandatory )]
        [string]$Type,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$DiskLimit,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$FileLimit,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$Threshold,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$SoftDiskLimit,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$SoftFileLimit,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [switch]$PerformUserMapping,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$Policy,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    if ( $VserverContext )
    {
        $Vserver = $VserverContext
    }
    $param = @{
        Vserver     = $Vserver
        QuotaType   = $Type
        QuotaTarget = $Target
        Volume      = $Volume
        User        = $User
        Group       = $Group
        Qtree       = $Qtree
    }
    New-MockNcQuota @param
}
function Add-NcQuota
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Quota.QuotaEntry] )]
    param(
        [Parameter( ParameterSetName = 'User', Mandatory )]
        [string[]]$User,
        [Parameter( ParameterSetName = 'Group', Mandatory )]
        [string]$Group,
        [Parameter( ParameterSetName = 'Tree', Mandatory )]
        [string]$Path,
        [Parameter( ParameterSetName = 'User', Mandatory )]
        [Parameter( ParameterSetName = 'Group', Mandatory )]
        [Parameter( ParameterSetName = 'ZAPI', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$Qtree,
        [Parameter( ParameterSetName = 'ZAPI', Mandatory )]
        [string[]]$Target,
        [Parameter( ParameterSetName = 'ZAPI', Mandatory )]
        [string]$Type,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$DiskLimit,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$FileLimit,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$Threshold,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$SoftDiskLimit,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$SoftFileLimit,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [switch]$PerformUserMapping,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$Policy,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'User' )]
        [Parameter( ParameterSetName = 'Group' )]
        [Parameter( ParameterSetName = 'Tree' )]
        [Parameter( ParameterSetName = 'ZAPI' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcQuota @param
}
function Enable-NcQuota
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Job.JobInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcJob -JobVserver $VserverContext -JobType 'Quota Operation'
}
function Disable-NcQuota
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Job.JobInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcJob -JobVserver $VserverContext -JobType 'Quota Operation'
}
function Start-NcQuotaResize
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Job.JobInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcJob -JobVserver $VserverContext -JobType 'Quota Operation'
}
function Get-NcQuotaStatus
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Quota.QuotaStatusAttributes] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string[]]$Volume,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch]$Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Quota.QuotaStatusAttributes]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Quota.QuotaStatusAttributes]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcQuotaStatus
}