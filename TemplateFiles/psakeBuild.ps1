properties {
    # These settings overwrite values supplied form the PowerShellBuild
    # module and govern how those tasks are executed
    $scriptAnalysisEnabled = $true

    $codeCoverageEnabled = $true
    $codeCoverageFiles = @(
        "$PSScriptRoot/<%=$PLASTER_PARAM_ModuleName%>/Classes/*.ps1",
        "$PSScriptRoot/<%=$PLASTER_PARAM_ModuleName%>/Private/*.ps1",
        "$PSScriptRoot/<%=$PLASTER_PARAM_ModuleName%>/Public/*.ps1")

    $testRootDir = "$projectRoot/test"

    # Properties for publishing the module.
    # Uncomment lines to update them from the default.
    #$psRepository = 'PSGallery'
    #$psRepositoryApiKey = $env:PSGALLERY_API_KEY
}

Import-Module PowerShellBuild

task default -depends Build

task Build -FromModule PowerShellBuild