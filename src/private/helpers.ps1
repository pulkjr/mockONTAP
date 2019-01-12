function Resolve-DeserializedObject {
    <#
        .SYNOPSIS
        This function will serialize an DataONTAP object
        #>
    param(
        $InputObject,
        [string]
        $ReturnObjectType,
        [NetApp.Ontapi.Filer.C.NcController]
        $Controller
    )
    
    Write-Verbose "Serializing object into: $ReturnObjectType"
    if (-not $Controller) {
        $Controller = New-MockNcController
    }

    try {
        $returnObject = New-Object -TypeName $ReturnObjectType

    }
    catch {
        return
    }
    $_properties = $returnObject | Get-Member -MemberType Property, NoteProperty
    
    foreach ($_property in $_properties) {

        $_OntapType = [regex]::Match($_property.Definition, 'DataONTAP([.].+?)+\s').value.trim()
        $_NetAppType = [regex]::Match($_property.Definition, 'NetApp.Ontapi.Filer.C.NcController').value

        if (-not [string]::IsNullOrEmpty($_NetAppType)) {
            $returnObject.$($_property.Name) = $Controller
        }
        elseif ([string]::IsNullOrEmpty($_OntapType)) {
            try {
                $returnObject.$($_property.Name) = $InputObject.$($_property.Name)

            }
            catch {
                if ($_ -match 'ReadOnly property') {
                    continue
                }
            }
        }
        else {
            $returnObject.$($_property.Name) = Resolve-DeserializedObject -InputObject $InputObject.$($_property.Name) -ReturnObjectType $_OntapType
        }
        

    }

    return $returnObject
}

#$aggrs = Import-Clixml Z:\git\Examples\VolumePlacement\aggrListComplete.xml
#Resolve-DeserializedObject -InputObject $aggrs[0] -ReturnObjectType 'DataONTAP.C.Types.Aggr.AggrAttributes'