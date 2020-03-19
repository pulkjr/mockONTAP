function Out-CmdletTemplate
{
    [CmdletBinding()]
    param (
        [String]
        $CommandName
    )
    
    process
    {
        $cmdDefinition = Get-Command $CommandName
        $parameters = $cmdDefinition.Parameters.Values
        
        $returnObj = [System.Text.StringBuilder]::New( "function $CommandName" )
        [void]$returnObj.AppendLine().Append( "{" )
        [void]$returnObj.AppendLine().Append( "[CmdletBinding(" )
        
        if ( $cmdDefinition.DefaultParameterSet )
        {
            [void]$returnObj.Append( " DefaultParameterSetName='$( $cmdDefinition.DefaultParameterSet )' " )
        }
        if ( $cmdDefinition.Parameters['Confirm'] )
        {
            [void]$returnObj.Append( " SupportsShouldProcess = `$true " )
        }
        [void]$returnObj.Append( ")]" )

        if ( $cmdDefinition.OutputType )
        {
            [void]$returnObj.AppendLine().Append( "[OutputType( [$( $cmdDefinition.OutputType )] )]" )
        }
        [void]$returnObj.AppendLine().Append( "param(" )
        foreach ( $parameter in $parameters | Where-Object { $_.Name -notin @('ZapiRetryCount', 'Confirm', 'WhatIf', 'PipelineVariable', 'OutBuffer', 'OutVariable', 'InformationVariable', 'WarningVariable', 'ErrorVariable', 'InformationAction', 'WarningAction', 'ErrorAction', 'Debug', 'Verbose' ) } )
        {
            foreach ( $parameterSet in $cmdDefinition.ParameterSets )
            {
                if ( $parameter.Name -in $parameterSet.Parameters.Name )
                {
                    [void]$returnObj.AppendLine().Append( "[Parameter( ParameterSetName='$( $parameterSet.Name )'" )
                    if ( ($parameterSet.Parameters | Where-Object { $_.Name -eq $parameter.Name } ).IsMandatory -eq $true ) 
                    {
                        [void]$returnObj.Append( ", Mandatory )]" )
                    }
                    else
                    {
                        [void]$returnObj.Append( " )]" )
                    }
                }
                
            }
            [void]$returnObj.AppendLine().Append( "[$($parameter.ParameterType)]`$$($parameter.Name)," )
        }
        [void]$returnObj.AppendLine().Append( ")" )
        [void]$returnObj.AppendLine().Append( "New-MockNc #TODO: Add call to mock" )
        [void]$returnObj.AppendLine().Append( "}" )
        Invoke-Formatter -ScriptDefinition $returnObj.ToString()
    }
}
