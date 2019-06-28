function Invoke-InstallationsApiAddInstallation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [IO.Swagger.Model.InstallationAddObject]
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
        'Calling method: InstallationsApi-AddInstallation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:InstallationsApi.AddInstallation(
            ${body},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-InstallationsApiDeleteInstallation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
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
        'Calling method: InstallationsApi-DeleteInstallation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:InstallationsApi.DeleteInstallation(
            ${id},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-InstallationsApiGetChannels {
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
        'Calling method: InstallationsApi-GetChannels' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:InstallationsApi.GetChannels(
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-InstallationsApiGetInstallation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
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
        'Calling method: InstallationsApi-GetInstallation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:InstallationsApi.GetInstallation(
            ${id},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-InstallationsApiGetInstallationFields {
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
        'Calling method: InstallationsApi-GetInstallationFields' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:InstallationsApi.GetInstallationFields(
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

function Invoke-InstallationsApiGetInstallations {
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
        ${xEmbarcaderoMasterSecret},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Decimal]
        ${skip},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Decimal]
        ${limit},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Decimal]
        ${order},
        [Parameter(Position = 6, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${where}
    )

    Process {
        'Calling method: InstallationsApi-GetInstallations' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:InstallationsApi.GetInstallations(
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret},
            ${skip},
            ${limit},
            ${order},
            ${where}
        )
    }
}

function Invoke-InstallationsApiUpdateInstallation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [IO.Swagger.Model.UpdateInstallationObject]
        ${body},
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
        'Calling method: InstallationsApi-UpdateInstallation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:InstallationsApi.UpdateInstallation(
            ${id},
            ${body},
            ${xEmbarcaderoApplicationId},
            ${xEmbarcaderoAppSecret},
            ${xEmbarcaderoMasterSecret}
        )
    }
}

