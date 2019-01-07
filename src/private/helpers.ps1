function Resolve-DeserializedObject
{
    <#
        .SYNOPSIS
        This function will serialize an DataONTAP object
        #>
    param(
        $InputObject,
        [string]
        $ReturnObjectType
    )
    
    Write-Verbose "Serializing object into: $ReturnObjectType"

    $returnObject = New-Object -TypeName $ReturnObjectType
    $_properties = $returnObject | Get-Member -MemberType Property, NoteProperty
    
    foreach ($_property in $_properties)
    {
        $_errorActionBefore = $ErrorActionPreference
        $ErrorActionPreference = 'SilentlyContinue'

        if ($($InputObject.$($_property.Name)).gettype().name -ne 'PSObject')
        {
            $returnObject.$($_property.Name) = $InputObject.$($_property.Name)
        }
        else
        {
            $_OntapType = [regex]::Match($_property.Definition, 'DataONTAP([.].+?)+\s').value.trim()
            if ([string]::IsNullOrEmpty($_OntapType))
            {
                $returnObject.$($_property.Name) = $InputObject.$($_property.Name)
            }
            else
            {
                $returnObject.$($_property.Name) = Resolve-DeserializedObject -InputObject $InputObject.$($_property.Name) -ReturnObjectType $_OntapType
            }
        }
        $ErrorActionPreference = $_errorActionBefore
    }

    return $returnObject
}