function New-PushDataObjectGcm {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${message},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${title}
    )

    Process {
        'Creating object: IO.Swagger.Model.PushDataObjectGcm' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PushDataObjectGcm -ArgumentList @(
            ${message},
            ${title}
        )
    }
}
