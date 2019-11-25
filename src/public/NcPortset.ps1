function New-MockNcPortset
{
    param(
        $InitiatorGroupInfo = 'SanSVMiGroup',
        $NcController,
        $PortsetName = 'SanSVMPortgroup',
        $PortsetPortInfo = @( 'iscsi1', 'iscsi2' ),
        $PortsetPortTotal = '2',
        $PortsetType = 'iscsi',
        $Vserver = 'TestSVM'
    )
    $returnObj = [DataONTAP.C.Types.Portset.PortsetInfo]::New()
    $returnObj.InitiatorGroupInfo = $InitiatorGroupInfo
    $returnObj.NcController = $NcController
    $returnObj.PortsetName = $PortsetName
    $returnObj.PortsetPortInfo = $PortsetPortInfo
    $returnObj.PortsetPortTotal = $PortsetPortTotal
    $returnObj.PortsetType = $PortsetType
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function Get-NcPortset
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Portset.PortsetInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Name,
        [Parameter( ParameterSetName = 'ByName' )]
        [string[]]$Vserver,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch]$Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Portset.PortsetInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Portset.PortsetInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcPortset -PortsetName $Name -Vserver $Vserver
}
function New-NcPortset
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Portset.PortsetInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [ValidateSet( 'iscsi', 'fcp', 'mixed' )]
        [string]$Protocol,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcPortset -PortsetName $Name -Protocol $Protocol -Vserver $VserverContext
}
function Remove-NcPortset
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
function Add-NcPortsetPort
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Portset.PortsetInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Port,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcPortset -PortsetName $Name -Port $Port -Vserver $VserverContext
}
function Remove-NcPortsetPort
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Portset.PortsetInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Port,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcPortset -PortsetName $Name -Port $Port -Vserver $VserverContext
}
