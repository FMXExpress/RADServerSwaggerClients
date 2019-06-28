function New-PushWhereObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${deviceType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.PushWhereObjectDeviceToken]]
        ${deviceToken}
    )

    Process {
        'Creating object: IO.Swagger.Model.PushWhereObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PushWhereObject -ArgumentList @(
            ${deviceType},
            ${deviceToken}
        )
    }
}
