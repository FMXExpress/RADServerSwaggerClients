function New-UpdatedObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${updated}
    )

    Process {
        'Creating object: IO.Swagger.Model.UpdatedObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UpdatedObject -ArgumentList @(
            ${updated}
        )
    }
}
