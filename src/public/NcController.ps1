Function New-MockNcController
{
    [CmdletBinding()]
    param(
        $Name,
        [ValidateSet( 443, 80 )]
        $Port,
        $Credential,
        [switch]$HTTPS,
        [switch]$HTTP,
        $Transient,
        $Vserver,
        $Timeout,
        $Version = 'NetApp Release 9.4: Fri Jun 08 22:50:12 UTC 2018',
        $OntapiMajorVersion = 1,
        $OntapiMinorVersion = 140,
        $SSLVersion,
        $ApplicationName,
        $Add
    )
    
    $_mockController = [NetApp.Ontapi.Filer.C.NcController]::new( '127.0.0.1' )
    $_mockController.Name = $Name
    $_mockController.Credentials = [NetApp.Ontapi.OntapiCredential]::new( 'admin', [securestring]::new() )
    $_mockController.Version = $Version
    $_mockController.SetOntapiVersion( $OntapiMajorVersion, $OntapiMinorVersion )

    if ( $HTTPS )
    {
        $port = 443
    }
    if ( $HTTP )
    {
        $port = 80
    }
    $_mockController.Port = $Port

    if ( $Vserver )
    {
        $_mockController.Vserver = $Vserver
    }
    Write-Verbose ' - Returning NetApp.Ontapi.Filer.C.NcController from New-MockNcController'
    return $_mockController
}
function Connect-NcController
{
    [CmdletBinding()]
    [OutputType( [NetApp.Ontapi.Filer.C.NcController] )]
    param(
        [Parameter( ParameterSetName = '__AllParameterSets', Mandatory )]
        [string]$Name,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [System.Nullable[uint16]]$Port,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [pscredential]$Credential,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$HTTPS,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$HTTP,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Transient,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$Vserver,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [System.Nullable[int]]$Timeout,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [switch]$Add,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$ApplicationName,
        [Parameter( ParameterSetName = '__AllParameterSets' )]
        [string]$SSLVersion
    )

    New-MockNcController @PSBoundParameters
}