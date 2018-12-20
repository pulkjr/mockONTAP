Function New-MockNcController
{
    [CmdletBinding()]
    param(
        $Vserver
    )
    $_mockController = [NetApp.Ontapi.Filer.C.NcController]::new('127.0.0.1')
    $_mockController.Credentials = [NetApp.Ontapi.OntapiCredential]::new('admin', [securestring]::new())
    $_mockController.Version = 'NetApp Release 9.4: Fri Jun 08 22:50:12 UTC 2018'
    $_mockController.Port = 443
    $_mockController.Ontapi = '1.140'

    if ($Vserver)
    {
        $_mockController.Vserver = $Vserver
    }

    return $_mockController;
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
        $Transient,
        $Vserver,
        $Timeout
    )

    New-MockNcController -Vserver $Vserver
}

