function New-EdgeModuleResourceAddObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${resourcename}
    )

    Process {
        'Creating object: IO.Swagger.Model.EdgeModuleResourceAddObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.EdgeModuleResourceAddObject -ArgumentList @(
            ${resourcename}
        )
    }
}
