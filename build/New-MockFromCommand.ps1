function New-MockFromCommand
{
    param(
        $CommandName,
        [scriptblock]
        $ScriptBlock
    )
    if ($CommandName)
    {
        $_output = invoke-Expression -Command $CommandName

    }
    elseif ($ScriptBlock)
    {
        $_output = Invoke-Command -ScriptBlock $ScriptBlock

    }

    $type = @( $_output )[0].GetType().FullName

    $single = @( $_output )[0]

    $singleProperties = $single | Get-Member -MemberType Properties
    
    $returnObj = [System.Text.StringBuilder]::New( "function New-MockNcXXX{" )
    
    [void]$returnObj.AppendLine().Append( "param(" )

    for ( $i = 0; $i -lt $singleProperties.count; $i++ )
    {
        $prop = $singleProperties[$i].Name
        
        
        if ( $i -lt $( $singleProperties.count - 1 ) )
        {
            [void]$returnObj.AppendLine().Append( "`$$prop = '$($single.$prop)'," )
        }
        else
        {
            [void]$returnObj.AppendLine().Append( "`$$prop = '$($single.$prop)'" )
        }
    }
    [void]$returnObj.AppendLine().Append( ")" )

    [void]$returnObj.AppendLine().Append( "`$returnObj = [$type]::New()" )

    foreach ( $prop in $singleProperties.Name )
    {
        [void]$returnObj.AppendLine().Append( "`$returnObj.$prop = `$$prop" )
    }
    [void]$returnObj.AppendLine().Append( "return `$returnObj" )

    [void]$returnObj.AppendLine().Append( "}" )

    Invoke-Formatter -ScriptDefinition $returnObj.ToString()
}