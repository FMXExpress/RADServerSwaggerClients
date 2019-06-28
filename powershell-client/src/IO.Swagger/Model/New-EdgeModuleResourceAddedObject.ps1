function New-EdgeModuleResourceAddedObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${resourcename}
    )

    Process {
        'Creating object: IO.Swagger.Model.EdgeModuleResourceAddedObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.EdgeModuleResourceAddedObject -ArgumentList @(
            ${resourcename}
        )
    }
}
