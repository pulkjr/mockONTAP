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
        $OntapiMinorVersion = 140
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
Function Connect-NcController
{
    [CmdletBinding()]
    param(
        $Name,
        $Port,
        $Credential,
        [switch]$HTTPS,
        [switch]$HTTP,
        [switch]$Transient,
        $Vserver,
        $Timeout
    )

    New-MockNcController @PSBoundParameters
}

New-MockNcController