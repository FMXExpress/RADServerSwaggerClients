function New-FieldInstallationObject {
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
        'Creating object: IO.Swagger.Model.FieldInstallationObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.FieldInstallationObject -ArgumentList @(
            ${name},
            ${fields},
            ${custom}
        )
    }
}
