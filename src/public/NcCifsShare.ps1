function New-MockNcCifsShare
{
    param(
        $Acl = 'Everyone / Full Control',
        $AttributeCacheTtl,
        $AttributeCacheTtlSpecified = $False,
        $CifsServer = 'CifsServer01',
        $Comment = 'A CIFS Share for people',
        $DirUmask,
        $DirUmaskSpecified = $False,
        $FileUmask,
        $FileUmaskSpecified = $False,
        $ForceGroupForCreate,
        $MaxConnectionsPerShare = '4294967295',
        $MaxConnectionsPerShareSpecified = $True,
        $NcController,
        $OfflineFilesMode = 'programs',
        $Path = '/vol0',
        $ShareName = 'Share01$',
        $ShareProperties = 'oplocks browsable changenotify',
        $SymlinkProperties = 'enable',
        $Volume = 'vol0',
        $VscanFileopProfile = 'strict',
        $Vserver = 'cifsSVM',
        $VserverContext,
        $Query,
        $Attributes,
        $Template,
        $Name,
        $VscanProfile,
        $DisablePathValidation,
        $IsPathValidationEnabled,
        $Controller
    )
    if ( $Name )
    {
        $ShareName = $Name
    }
    if ( $VserverContext )
    {
        $Vserver = $VserverContext
    }
    if ( $VscanProfile )
    {
        $VscanFileopProfile = $VscanProfile
    }
    if ( $Controller )
    {
        $NcController = $Controller
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Cifs.CifsShare]::New()
    $returnObj.Acl = $Acl
    $returnObj.AttributeCacheTtl = $AttributeCacheTtl
    $returnObj.AttributeCacheTtlSpecified = $AttributeCacheTtlSpecified
    $returnObj.CifsServer = $CifsServer
    $returnObj.Comment = $Comment
    $returnObj.DirUmask = $DirUmask
    $returnObj.DirUmaskSpecified = $DirUmaskSpecified
    $returnObj.FileUmask = $FileUmask
    $returnObj.FileUmaskSpecified = $FileUmaskSpecified
    $returnObj.ForceGroupForCreate = $ForceGroupForCreate
    $returnObj.MaxConnectionsPerShare = $MaxConnectionsPerShare
    $returnObj.MaxConnectionsPerShareSpecified = $MaxConnectionsPerShareSpecified
    $returnObj.NcController = $NcController
    $returnObj.OfflineFilesMode = $OfflineFilesMode
    $returnObj.Path = $Path
    $returnObj.ShareName = $ShareName
    $returnObj.ShareProperties = $ShareProperties
    $returnObj.SymlinkProperties = $SymlinkProperties
    $returnObj.Volume = $Volume
    $returnObj.VscanFileopProfile = $VscanFileopProfile
    $returnObj.Vserver = $Vserver
    return $returnObj
}
function Get-NcCifsShare
{
    [CmdletBinding( DefaultParameterSetName = '1' )]
    param (
        [Parameter( ParameterSetName = '1' )]
        [String[]]
        $Name,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $CifsServer,
        [String]
        $VserverContext,
        [Parameter( ParameterSetName = '1' )]
        [Parameter( ParameterSetName = '3' )]
        [DataONTAP.C.Types.Cifs.CifsShare]
        $Attributes,
        [Parameter( ParameterSetName = '3' )]
        [DataONTAP.C.Types.Cifs.CifsShare]
        $Query,
        [Parameter( ParameterSetName = '2' )]
        $Template,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )

    New-MockNcCifsShare @PSBoundParameters
}
function Remove-NcCifsShare
{
    [CmdletBinding( DefaultParameterSetName = '1', SupportsShouldProcess = $true )]
    param (
        [Parameter( ParameterSetName = '1', Mandatory )]
        [String[]]
        $Name,
        [String]
        $VserverContext,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )
    if ( $PSCmdlet.ShouldProcess( "Removing Cifs Share $Name" ) ) { return }
}
function Add-NcCifsShare
{
    param (
        [Parameter( ParameterSetName = '1' )]
        [String[]]
        $Name,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $Path,
        [Parameter( ParameterSetName = '1' )]
        [String[]]
        $ShareProperties,
        [Parameter( ParameterSetName = '1' )]
        [String[]]
        $SymlinkProperties,
        [Parameter( ParameterSetName = '1' )]
        [Int32]
        $FileUmask,
        [Parameter( ParameterSetName = '1' )]
        [Int32]
        $DirUmask,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $Comment,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $OfflineFilesMode,
        [Parameter( ParameterSetName = '1' )]
        [Int32]
        $AttributeCacheTtl,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $VscanProfile,
        [Parameter( ParameterSetName = '1' )]
        [Int64]
        $MaxConnectionsPerShare,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $ForceGroupForCreate,
        [Parameter( ParameterSetName = '1' )]
        [Switch]
        $DisablePathValidation,
        [Parameter( ParameterSetName = '1' )]
        [Switch]
        $VserverContext,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )

    New-MockNcCifsShare @PSBoundParameters
}
function Set-NcCifsShare
{
    param (
        [Parameter( ParameterSetName = '1' )]
        [String[]]
        $Name,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $Path,
        [Parameter( ParameterSetName = '1' )]
        [String[]]
        $ShareProperties,
        [Parameter( ParameterSetName = '1' )]
        [String[]]
        $SymlinkProperties,
        [Parameter( ParameterSetName = '1' )]
        [Int32]
        $FileUmask,
        [Parameter( ParameterSetName = '1' )]
        [Int32]
        $DirUmask,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $Comment,
        [Parameter( ParameterSetName = '1' )]
        [Int32]
        $AttributeCacheTtl,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $OfflineFilesMode,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $VscanProfile,
        [Parameter( ParameterSetName = '1' )]
        [Int64]
        $MaxConnectionsPerShare,
        [Parameter( ParameterSetName = '1' )]
        [String]
        $ForceGroupForCreate,
        [Parameter( ParameterSetName = '1' )]
        [Bool]
        $IsPathValidationEnabled,
        [Parameter( ParameterSetName = '1' )]
        [Switch]
        $VserverContext,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )

    New-MockNcCifsShare @PSBoundParameters
}