function Invoke-ApiDocApiAPI {
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
        'Calling method: ApiDocApi-API' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ApiDocApi.API(
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-ApiDocApiGetAPIJSONFormat {
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
        'Calling method: ApiDocApi-GetAPIJSONFormat' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ApiDocApi.GetAPIJSONFormat(
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-ApiDocApiGetAPIYAMLFormat {
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
        'Calling method: ApiDocApi-GetAPIYAMLFormat' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ApiDocApi.GetAPIYAMLFormat(
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-ApiDocApiGetAPIYAMLFormatEndPoint {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${item},
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
        'Calling method: ApiDocApi-GetAPIYAMLFormatEndPoint' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ApiDocApi.GetAPIYAMLFormatEndPoint(
            ${item},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

