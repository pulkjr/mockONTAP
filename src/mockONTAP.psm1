try
{
    Get-ChildItem -Path $PSScriptRoot -Filter *.ps1 -Recurse | ForEach-Object { . $_.FullName }
}
catch
{
    $Global:Error.RemoveAt(0)

    throw "One of the script files failed to load. Reason: $( $_.Exception.Message )"
}