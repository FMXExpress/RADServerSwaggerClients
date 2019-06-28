function New-PushDataObjectAps {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${alert},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${badge},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${sound}
    )

    Process {
        'Creating object: IO.Swagger.Model.PushDataObjectAps' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PushDataObjectAps -ArgumentList @(
            ${alert},
            ${badge},
            ${sound}
        )
    }
}
