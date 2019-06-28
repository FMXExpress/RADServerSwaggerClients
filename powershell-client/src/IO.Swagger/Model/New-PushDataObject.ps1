function New-PushDataObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.PushDataObjectGcm]]
        ${gcm},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.PushDataObjectAps]]
        ${aps},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.PushDataObjectExtras]]
        ${extras}
    )

    Process {
        'Creating object: IO.Swagger.Model.PushDataObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PushDataObject -ArgumentList @(
            ${gcm},
            ${aps},
            ${extras}
        )
    }
}
