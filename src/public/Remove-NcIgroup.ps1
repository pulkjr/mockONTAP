function Remove-NcIgroup
{
    [OutputType([void])]
    param(
        [Parameter(Mandatory)]
        [String]
        $Name,
        [Parameter(Mandatory)]
        [String]
        $VserverContext,
        $Controller,
        [switch]
        $Force
    )

    return
}