function New-MockNcLunMap
{
    [CmdletBinding()]
    [OutputType( 'DataONTAP.C.Types.Lun.LunMapInfo' )]
    param (
        [Parameter()]
        [string]$Path,

        [Parameter()]
        [string]$Vserver,

        [Parameter()]
        [string]$InitiatorGroup,

        [Parameter()]
        [Alias( 'Id' )]
        [int]$LunId,

        [Parameter()]
        [string]$Node,

        [Parameter()]
        $Query,

        #[Parameter()]
        #$Attributes,

        [Parameter()]
        [string]$VserverContext,

        [Parameter()]
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    elseif ( $NcController -is [string])
    {
        $NcController = New-MockNcController -Name $NcController
    }
    else
    {
        $NcController = New-MockNcController
    }

    if ( $Query.Path -and [string]::IsNullOrEmpty( $Path ) )
    {
        $Path = $Query.Path
    }

    if ( $Query.Vserver -and [string]::IsNullOrEmpty( $Vserver ) )
    {
        $Vserver = $Query.Vserver
    }

    if ( $Query.InitiatorGroup -and [string]::IsNullOrEmpty( $InitiatorGroup ) )
    {
        $InitiatorGroup = $Query.InitiatorGroup
    }

    if ( $Query.LunId -and [string]::IsNullOrEmpty( $LunId ) )
    {
        $LunId = $Query.LunId
    }

    if ( $VserverContext -and [string]::IsNullOrEmpty( $Vserver ) )
    {
        $Vserver = $VserverContext
    }

    if ( -not $PSCmdlet.MyInvocation.BoundParameters.ContainsKey( 'LunId' ) )
    {
        $LunId = 0
    }

    $_mockNcLunMap = [DataONTAP.C.Types.Lun.LunMapInfo]::new()
    $_mockNcLunMap.InitiatorGroup = $InitiatorGroup
    $_mockNcLunMap.InitiatorGroupUuid = [guid]::NewGuid().ToString()
    $_mockNcLunMap.LunId = $LunId
    $_mockNcLunMap.LunUuid = [guid]::NewGuid().ToString()
    $_mockNcLunMap.NcController = $NcController
    $_mockNcLunMap.Node = $Node
    $_mockNcLunMap.Path = $Path
    #ReportingNodes
    $_mockNcLunMap.Vserver = $Vserver

    return $_mockNcLunMap
}

function Add-NcLunMap
{
    [CmdletBinding()]
    [OutputType( 'DataONTAP.C.Types.Lun.LunMapInfo' )]
    param (
        [Parameter( Mandatory, ValueFromPipelineByPropertyName )]
        [string]$Path,

        [Parameter( Mandatory, ValueFromPipelineByPropertyName )]
        [string]$InitiatorGroup,

        [Parameter()]
        [string]$VserverContext,

        [Parameter()]
        [int]$Id,

        [Parameter()]
        [string]$Node,

        [Parameter( ValueFromPipeline, ValueFromPipelineByPropertyName )]
        $Controller
    )

    New-MockNcLunMap @PSBoundParameters
}

function Get-NcLunMap
{
    [CmdletBinding()]
    [OutputType( 'DataONTAP.C.Types.Lun.LunMapInfo' )]
    param(
        [Parameter( ValueFromPipelineByPropertyName )]
        [string]$Path,

        [Parameter( ValueFromPipelineByPropertyName )]
        [string]$Vserver,

        [Parameter()]
        $Query,

        #[Parameter()]
        #$Attributes,

        [Parameter()]
        [string]$VserverContext,

        [Parameter( ValueFromPipeline, ValueFromPipelineByPropertyName )]
        $Controller
    )

    if ( $Query )
    {
        if ( $Query.Path )
        {
            $Path = $Query.Path
        }

        if ( $Query.Vserver )
        {
            $Vserver = $Query.Vserver
        }

        if ( $Query.InitiatorGroup )
        {
            $InitiatorGroup = $Query.InitiatorGroup
        }

        if ( $Query.LunId )
        {
            $lunId = $Query.LunId
        }

        if ( $Query.Node )
        {
            $node = $Query.Node
        }
    }

    $params = @{
        Controller     = $Controller
        Path           = $Path
        Vserver        = $Vserver
        InitiatorGroup = $InitiatorGroup
        LunId          = $lunId
        Node           = $node
    }

    New-MockNcLunMap @params
}

function Remove-NcLunMap
{
    [CmdletBinding()]
    [OutputType( [System.Void] )]
    param(
        [Parameter( Mandatory, ValueFromPipelineByPropertyName )]
        [string]$Path,

        [Parameter( Mandatory, ValueFromPipelineByPropertyName )]
        [string]$InitiatorGroup,

        [Parameter()]
        [string]$VserverContext,

        [Parameter( ValueFromPipeline, ValueFromPipelineByPropertyName )]
        $Controller
    )

    return
}
