function New-EdgeModuleResourceUpdateObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${resourcename}
    )

    Process {
        'Creating object: IO.Swagger.Model.EdgeModuleResourceUpdateObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.EdgeModuleResourceUpdateObject -ArgumentList @(
            ${resourcename}
        )
    }
}
