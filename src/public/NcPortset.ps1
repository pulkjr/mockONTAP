function New-MockNcPortset
{
    Param(
        $Name,
        $Vserver,
        $Attributes,
        $Controller,
        $Template,
        $Query,
        $Protocol,
        $VserverContext,
        [string[]]
        $Port
    )
    $portset = [DataONTAP.C.Types.Portset.PortsetInfo]::new()
    #$portset.NcController = $Controller
    $portset.PortsetName = $Name
    $portset.PortsetPortInfo = $Port
    $portset.PortsetPortTotal = @( $Port ).Count
    $portset.PortsetType = $Protocol
    if ( $VserverContext )
    {
        $Vserver = $VserverContext
    }
    $portset.Vserver = $Vserver

    return $portset
}
function Get-NcPortset
{
    param(
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String[]]
        $Name,
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String[]]
        $Vserver,
        [Parameter( ParameterSetName = 'one' )]
        [Parameter( ParameterSetName = 'three' )]
        [DataONTAP.C.Types.Portset.PortsetInfo]
        $Attributes,
        [Parameter( ParameterSetName = 'two' )]
        [Switch]
        $Template,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )
    foreach ( $_name in $Name )
    {
        New-MockNcPortset @PSBoundParameters
    }
}
function New-NcPortset
{
    param(
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $Name,
        [Parameter( ParameterSetName = 'one' )]
        [ValidateSet( 'iscsi', 'fcp', 'mixed' )]
        [String]
        $Protocol,
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $VserverContext,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )

    New-MockNcPortset @PSBoundParameters
}
function Remove-NcPortset
{
    param(
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $Name,
        [Parameter( ParameterSetName = 'one' )]
        [Switch]
        $Force,
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $VserverContext,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )

    $null
}
function Add-NcPortsetPort
{
    param(
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $Name,
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $Port,
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $VserverContext,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )

    New-MockNcPortset @PSBoundParameters
}
function Remove-NcPortsetPort
{
    param(
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $Name,
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $Port,
        [Parameter( Mandatory, ParameterSetName = 'one' )]
        [String]
        $VserverContext,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )

    return $null
}
