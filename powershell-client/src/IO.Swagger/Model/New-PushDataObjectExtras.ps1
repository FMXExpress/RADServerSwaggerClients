function New-PushDataObjectExtras {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${message}
    )

    Process {
        'Creating object: IO.Swagger.Model.PushDataObjectExtras' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PushDataObjectExtras -ArgumentList @(
            ${message}
        )
    }
}
