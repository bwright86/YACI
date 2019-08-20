properties {
    # These settings overwrite values supplied form the PowerShellBuild
    # module and govern how those tasks are executed
    $PSBPreference.Test.ScriptAnalysis.Enabled = $true

    # Pester code-coverage settings
    $PSBPreference.Test.CodeCoverage.Enabled = $true
    $PSBPreference.Test.CodeCoverage.Files = @(
        "$PSScriptRoot/OVFHelper/Classes/*.ps1",
        "$PSScriptRoot/OVFHelper/Private/*.ps1",
        "$PSScriptRoot/OVFHelper/Public/*.ps1")
    #$PSBPreference.Test.CodeCoverage.Threshold = .75

    # Location of the test files for module.
    $PSBPreference.Test.RootDir = "$projectRoot/test"


    # Uncomment lines to publish to a different repository.
    #$PSBPreference.Publish.PSRepositoryCredential = "PSGallery"
    #$PSBPreference.Publish.PSRepositoryApiKey = $env:PSGALLERY_API_KEY
}

Import-Module PowerShellBuild

task default -depends Build

task Build -FromModule PowerShellBuild