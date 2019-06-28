function New-UpdateObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${fieldName}
    )

    Process {
        'Creating object: IO.Swagger.Model.UpdateObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UpdateObject -ArgumentList @(
            ${fieldName}
        )
    }
}
