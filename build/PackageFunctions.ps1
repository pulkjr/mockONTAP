function Invoke-CopyFileListFromDevLocation
{
    param (
        [Parameter(Mandatory)]
        [string]$ModuleName,

        [Parameter(Mandatory)]
        [string]$ModuleOutputPath,

        [Parameter(Mandatory)]
        [hashtable]$BuildVariables
    )

    $srcModule = Get-Module -Name $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("$BuildRoot/src/$ModuleName.psd1") -ListAvailable

    foreach ($fileName in ($srcModule.FileList | Where-Object { $_ -notmatch '(?:lib|Templates)\\' -and $_ -notlike '*Hardware-*.xml' -and (Test-Path -Path $_) }))
    {
        $outputFile = $fileName.Replace($ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("$BuildRoot/src"), $ModuleOutputPath)

        if (-not (Test-Path -Path (Split-Path -Path $outputFile -Parent)))
        {
            [void](New-Item -Path (Split-Path -Path $outputFile -Parent) -ItemType Directory)
        }

        [void](Copy-Item -Path $fileName -Destination $outputFile -Force)
    }
}

function Invoke-UpdateModuleVersionInFile
{
    param (
        [Parameter(Mandatory)]
        [string]$ModuleName,

        [Parameter(Mandatory)]
        [string]$ModuleOutputPath,

        [Parameter(Mandatory)]
        [version]$Version,

        [Parameter(Mandatory)]
        [int]$RevisionNumber,

        [Parameter(Mandatory)]
        [switch]$IsPreRelease
    )

    $outModule = Get-Module -Name $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("$ModuleOutputPath/$ModuleName.psd1") -ListAvailable

    $newContent = (Get-Content -Path $outModule.Path) -replace "(\s*ModuleVersion\s*\=\s*)('0.0.1')\s*$", "`${1}'$( $Version.ToString(3) )'" -replace "(\s*BuildNumber\s*\=\s*)('0')\s*$", "`${1}'$( $RevisionNumber )'"

    if ($IsPreRelease.IsPresent)
    {
        $newContent = $newContent -replace "(\s*Prerelease\s*\=\s*)('')\s*$", "`${1}'build$RevisionNumber'"
    }

    [System.IO.File]::WriteAllLines($outModule.Path, $newContent, [System.Text.UTF8Encoding]::new($false))

}

function Invoke-CreateModuleNugetPackage
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [psmoduleinfo]$Module,

        [Parameter(Mandatory)]
        [string]$ModuleVersionString,

        [Parameter(Mandatory)]
        [string]$OutputFilePath
    )

    $nuspecFilePath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("$( Split-Path -Path $Module.ModuleBase -Parent )/$( $Module.Name ).$ModuleVersionString.nuspec")

    $dependencies = @(
        if ($module.PrivateData.PSData.ExternalModuleDependencies)
        {
            foreach ($dependencyModuleName in $module.PrivateData.PSData.ExternalModuleDependencies)
            {
                $requiredModuleEntry = $module.RequiredModules | Where-Object { $_.Name -eq $dependencyModuleName }
                "      <dependency id=`"$( $requiredModuleEntry.Name )`" version=`"$( $requiredModuleEntry.Version )`" />"
            }
        }
    )

    Set-Content -Path $nuspecFilePath -Force -Value @"
<?xml version='1.0'?>
<package>
  <metadata>
    <id>$( $Module.Name )</id>
    <version>$( $ModuleVersionString )</version>
    <authors>$( $Module.Author )</authors>
    <owners>$( $Module.CompanyName )</owners>
    <!--<licenseUrl>$( $Module.PrivateData.PSData.LicenseUri )</licenseUrl>
    <projectUrl>$( $Module.PrivateData.PSData.ProjectUri )</projectUrl>
    <iconUrl>$( $Module.PrivateData.PSData.IconUri )</iconUrl>-->
    <requireLicenseAcceptance>false</requireLicenseAcceptance>
    <description>$( $Module.Description )</description>
    <releaseNotes>$( $Module.ReleaseNotes )</releaseNotes>
    <copyright>$( $Module.Copyright )</copyright>
    <tags>$( $module.PrivateData.PSData.Tags -join ', ' )</tags>
    <dependencies>$( if ($dependencies) { "`n" + $( $dependencies -join "`n" ) + "`n    " } )</dependencies>
  </metadata>
</package>
"@

    & $Script:nuget.Path pack $nuspecFilePath -OutputDirectory (Split-Path -Path $OutputFilePath -Parent) -BasePath $Module.ModuleBase -NoPackageAnalysis -Verbosity quiet

    Remove-Item -Path $nuspecFilePath
}
