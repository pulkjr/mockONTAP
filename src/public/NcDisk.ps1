function New-MockNcDisk
{
    [CmdletBinding()]
    param (
        # Serialize an object from export-clixml back into an dataONTAP object.
        [Parameter(ValueFromPipeline)]
        [Object]
        $InputObject
    )
   
    process
    {
        if ($InputObject)
        {
            foreach ($_deserializedObject in $InputObject)
            {
                $returnObject = Resolve-DeserializedObject -InputObject $_deserializedObject -ReturnObjectType 'DataONTAP.C.Types.StorageDisk.StorageDiskInfo'
    
                return $returnObject

            }
        }
        else
        {

        }
    }
    
}

function Get-NcDisk
{
    param(

    )
    New-MockNcDisk
}