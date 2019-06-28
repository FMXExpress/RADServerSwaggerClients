function New-UpdatedGroupObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${updated}
    )

    Process {
        'Creating object: IO.Swagger.Model.UpdatedGroupObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UpdatedGroupObject -ArgumentList @(
            ${updated}
        )
    }
}
