function New-EdgeModuleResourceUpdatedObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${updated}
    )

    Process {
        'Creating object: IO.Swagger.Model.EdgeModuleResourceUpdatedObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.EdgeModuleResourceUpdatedObject -ArgumentList @(
            ${updated}
        )
    }
}
