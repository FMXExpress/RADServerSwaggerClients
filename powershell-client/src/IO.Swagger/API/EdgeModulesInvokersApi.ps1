function Invoke-EdgeModulesInvokersApiDeleteResourceEndpoint {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-DeleteResourceEndpoint' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.DeleteResourceEndpoint(
            ${mname},
            ${rname},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-EdgeModulesInvokersApiDeleteResourceEndpointItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${wildcard},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-DeleteResourceEndpointItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.DeleteResourceEndpointItem(
            ${mname},
            ${rname},
            ${wildcard},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-EdgeModulesInvokersApiGetResourceEndpoint {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-GetResourceEndpoint' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.GetResourceEndpoint(
            ${mname},
            ${rname},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-EdgeModulesInvokersApiGetResourceEndpointItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${wildcard},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-GetResourceEndpointItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.GetResourceEndpointItem(
            ${mname},
            ${rname},
            ${wildcard},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-EdgeModulesInvokersApiPatchResourceEndpoint {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${body},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-PatchResourceEndpoint' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.PatchResourceEndpoint(
            ${mname},
            ${rname},
            ${body},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-EdgeModulesInvokersApiPatchResourceEndpointItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${wildcard},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${body},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 6, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-PatchResourceEndpointItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.PatchResourceEndpointItem(
            ${mname},
            ${rname},
            ${wildcard},
            ${body},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-EdgeModulesInvokersApiPostResourceEndpoint {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${body},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-PostResourceEndpoint' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.PostResourceEndpoint(
            ${mname},
            ${rname},
            ${body},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-EdgeModulesInvokersApiPostResourceEndpointItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${wildcard},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${body},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 6, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-PostResourceEndpointItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.PostResourceEndpointItem(
            ${mname},
            ${rname},
            ${wildcard},
            ${body},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-EdgeModulesInvokersApiPutResourceEndpoint {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${body},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-PutResourceEndpoint' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.PutResourceEndpoint(
            ${mname},
            ${rname},
            ${body},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-EdgeModulesInvokersApiPutResourceEndpointItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mname},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${rname},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${wildcard},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${body},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoApplicationId},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoAppSecret},
        [Parameter(Position = 6, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${xEmbarcaderoMasterSecret}
    )

    Process {
        'Calling method: EdgeModulesInvokersApi-PutResourceEndpointItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:EdgeModulesInvokersApi.PutResourceEndpointItem(
            ${mname},
            ${rname},
            ${wildcard},
            ${body},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

