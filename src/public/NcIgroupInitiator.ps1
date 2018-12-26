function Add-NcIgroupInitiator
{
    param(
        $Name,
        $VserverContext,
        $Controller,
        $Initiator,
        $ReturnInitiators
    )

    $GetParam = @{
        Name       = $Name
        Vserver    = $VserverContext
        Controller = $Controller
        Initiator  = $ReturnInitiators
    }
    
    mockONTAP\New-MockNcIgroup @GetParam
}
function Remove-NcIgroupInitiator
{
    param(
        $Name,
        $VserverContext,
        $Controller,
        $Initiator,
        $ReturnInitiators
    )

    $GetParam = @{
        Name       = $Name
        Vserver    = $VserverContext
        Controller = $Controller
        Initiator  = $ReturnInitiators
    }
    
    mockONTAP\New-MockNcIgroup @GetParam
}