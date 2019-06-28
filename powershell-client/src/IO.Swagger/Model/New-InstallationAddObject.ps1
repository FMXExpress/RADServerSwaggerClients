function New-InstallationAddObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${deviceToken},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${deviceType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${channels}
    )

    Process {
        'Creating object: IO.Swagger.Model.InstallationAddObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.InstallationAddObject -ArgumentList @(
            ${deviceToken},
            ${deviceType},
            ${channels}
        )
    }
}
