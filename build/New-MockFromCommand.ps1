function New-MockFromCommand
{
    param(
        $CommandName
    )
    $_output = invoke-Expression -Command $CommandName

    $type = @($_output)[0].gettype().FullName
    $single = @($_output)[0]
    $singleProperties = $single | Get-Member -MemberType Properties
    
    "function New-MockNcXXX{"
    "param("
    for ($i = 0; $i -lt $singleProperties.count; $i++)
    {
        $prop = $singleProperties[$i].Name
        
        
        if ($i -lt $($singleProperties.count - 1))
        {
            "`$$prop = '$($single.$prop)',"
        }
        else {"`$$prop = '$($single.$prop)'"}
    }
    ")"

    "`$returnObj = [$type]::New()"
    foreach ($prop in $singleProperties.Name)
    {
        "`$returnObj.$prop = `$$prop"
    }
    "return `$returnObj"
    "}"
}