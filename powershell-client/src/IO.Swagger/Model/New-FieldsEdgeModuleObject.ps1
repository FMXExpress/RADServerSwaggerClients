function New-FieldsEdgeModuleObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.FieldObjectFields[]]]
        ${fields},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${custom}
    )

    Process {
        'Creating object: IO.Swagger.Model.FieldsEdgeModuleObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.FieldsEdgeModuleObject -ArgumentList @(
            ${name},
            ${fields},
            ${custom}
        )
    }
}
