function New-MockNcQtree
{
    param(
        $ExportPolicy = 'default',
        $Id = 1,
        $IsExportPolicyInherited = $True,
        $IsExportPolicyInheritedSpecified = $True,
        $Mode = '755',
        $NcController = '172.16.32.10',
        $Oplocks = 'enabled',
        $Qtree = 'TestQtree',
        $SecurityStyle = 'unix',
        $Status = 'normal',
        $Volume = 'TestVol',
        $Vserver = 'TestSVM'
    )
    $returnObj = [DataONTAP.C.Types.Qtree.QtreeInfo]::New()
    $returnObj.ExportPolicy = $ExportPolicy
    $returnObj.Id = $Id
    $returnObj.IsExportPolicyInherited = $IsExportPolicyInherited
    $returnObj.IsExportPolicyInheritedSpecified = $IsExportPolicyInheritedSpecified
    $returnObj.Mode = $Mode
    $returnObj.NcController = $NcController
    $returnObj.Oplocks = $Oplocks
    $returnObj.Qtree = $Qtree
    $returnObj.SecurityStyle = $SecurityStyle
    $returnObj.Status = $Status
    $returnObj.Volume = $Volume
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function Get-NcQtree
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Qtree.QtreeInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Volume,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Qtree,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch]$Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Qtree.QtreeInfo]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Qtree.QtreeInfo]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcQtree -Volume $Volume -Qtree $Qtree -Vserver $VserverContext
}
function Set-NcQtree
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Qtree.QtreeInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Qtree,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Mode,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$SecurityStyle,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$ExportPolicy,
        [Parameter( ParameterSetName = 'ByName' )]
        [switch]$EnableOplocks,
        [Parameter( ParameterSetName = 'ByName' )]
        [switch]$DisableOplocks,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcQtree -Volume $Volume -Qtree $Qtree -Vserver $VserverContext
}
function Remove-NcQtree
{
    [CmdletBinding( DefaultParameterSetName = 'ByName', SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Qtree,
        [Parameter( ParameterSetName = 'ByName' )]
        [switch]$Force,
        [Parameter( ParameterSetName = 'ByName' )]
        [switch]$Async,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}
function Rename-NcQtree
{
    [CmdletBinding( SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Qtree.QtreeInfo] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$Qtree,
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$NewName,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcQtree -Volume $Volume -Qtree $NewName -Vserver $VserverContext
}
function New-NcQtree
{
    [CmdletBinding( DefaultParameterSetName = 'ByName', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Qtree.QtreeInfo] )]
    param(
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$Volume,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Qtree,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Mode,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$SecurityStyle,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Oplocks,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$ExportPolicy,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    [hashtable]$_mockParameters = @{
        Volume        = $Volume
        Qtree         = $Qtree
        Vserver       = $VserverContext
        Mode          = $Mode
        SecurityStyle = $SecurityStyle
        Oplocks       = $Oplocks
        ExportPolicy  = $ExportPolicy
        Controller    = $Controller
    }
    New-MockNcQtree @_mockParameters
}