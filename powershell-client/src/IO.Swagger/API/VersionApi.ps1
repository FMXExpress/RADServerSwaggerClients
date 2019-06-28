function Invoke-VersionApiGetVersion {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: VersionApi-GetVersion' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:VersionApi.GetVersion(
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

