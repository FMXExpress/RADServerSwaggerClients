function Invoke-PushApiSend {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [IO.Swagger.Model.PushObject]
        ${body},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: PushApi-Send' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:PushApi.Send(
            ${body},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

