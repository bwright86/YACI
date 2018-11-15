properties {
    # These settings overwrite values supplied form the PowerShellBuild
    # module and govern how those tasks are executed
    $scriptAnalysisEnabled = $true

    $codeCoverageEnabled = $true
    $codeCoverageFiles = @(
        "$PSScriptRoot/OVFHelper/Classes/*.ps1",
        "$PSScriptRoot/OVFHelper/Private/*.ps1",
        "$PSScriptRoot/OVFHelper/Public/*.ps1")

    $testRootDir = "$projectRoot/test"
}

Import-Module PowerShellBuild

task default -depends Build

task Build -FromModule PowerShellBuild