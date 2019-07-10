function New-MockNcCifsShareAcl
{
    param(
        $NcController,
        $Permission = 'full_control',
        $Share = 'c$',
        $Unixid,
        $UnixidSpecified = $false,
        $UserGroupType = 'windows',
        $UserOrGroup = 'BUILTIN\Administrators',
        $Vserver = 'daeachlknz120',
        $Winsid = 'S-1-5-32-544'
    )
    $returnObj = [DataONTAP.C.Types.Cifs.CifsShareAccessControl]::New()
    $returnObj.NcController = $NcController
    $returnObj.Permission = $Permission
    $returnObj.Share = $Share
    $returnObj.Unixid = $Unixid
    $returnObj.UnixidSpecified = $UnixidSpecified
    $returnObj.UserGroupType = $UserGroupType
    $returnObj.UserOrGroup = $UserOrGroup
    $returnObj.Vserver = $Vserver
    $returnObj.Winsid = $Winsid
    return $returnObj
}
function Get-NcCifsShareAcl
{
    [CmdletBinding( DefaultParameterSetName = 'ByName' )]
    [OutputType( [DataONTAP.C.Types.Cifs.CifsShareAccessControl] )]
    param(
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Share,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$UserOrGroup,
        [Parameter( ParameterSetName = 'Template', Mandatory )]
        [switch]$Template,
        [Parameter( ParameterSetName = 'ByQuery', Mandatory )]
        [DataONTAP.C.Types.Cifs.CifsShareAccessControl]$Query,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [DataONTAP.C.Types.Cifs.CifsShareAccessControl]$Attributes,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [Parameter( ParameterSetName = 'Template' )]
        [Parameter( ParameterSetName = 'ByQuery' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcCifsShareAcl -Share $Share -UserOrGroup $UserOrGroup -Vserver $VserverContext
}
function Add-NcCifsShareAcl
{
    [CmdletBinding( DefaultParameterSetName = 'ByName', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Cifs.CifsShareAccessControl] )]
    param(
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$Share,
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$UserOrGroup,
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$Permission,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$UserGroupType,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Winsid,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcCifsShareAcl -Share $Share -UserOrGroup $UserOrGroup -Vserver $VserverContext -Permission $Permission -Winsid $Winsid
}
function Set-NcCifsShareAcl
{
    [CmdletBinding( DefaultParameterSetName = 'ByName', SupportsShouldProcess = $true )]
    [OutputType( [DataONTAP.C.Types.Cifs.CifsShareAccessControl] )]
    param(
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$Share,
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$UserOrGroup,
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$Permission,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$UserGroupType,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$Winsid,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    New-MockNcCifsShareAcl -Share $Share -UserOrGroup $UserOrGroup -Vserver $VserverContext -Permission $Permission -Winsid $Winsid -UserGroupType $UserGroupType
}
function Remove-NcCifsShareAcl
{
    [CmdletBinding( DefaultParameterSetName = 'ByName', SupportsShouldProcess = $true )]
    param(
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$Share,
        [Parameter( ParameterSetName = 'ByName', Mandatory )]
        [string]$UserOrGroup,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$UserGroupType,
        [Parameter( ParameterSetName = 'ByName' )]
        [string]$VserverContext,
        [Parameter( ParameterSetName = 'ByName' )]
        [NetApp.Ontapi.Filer.C.NcController[]]$Controller
    )
    return
}