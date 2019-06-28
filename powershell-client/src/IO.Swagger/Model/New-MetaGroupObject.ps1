function New-MetaGroupObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${creator},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${created},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${updated}
    )

    Process {
        'Creating object: IO.Swagger.Model.MetaGroupObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.MetaGroupObject -ArgumentList @(
            ${creator},
            ${created},
            ${updated}
        )
    }
}
