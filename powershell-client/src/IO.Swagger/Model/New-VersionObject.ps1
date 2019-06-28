function New-VersionObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${version},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${server}
    )

    Process {
        'Creating object: IO.Swagger.Model.VersionObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.VersionObject -ArgumentList @(
            ${version},
            ${server}
        )
    }
}
