function New-MetaObject {
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
        'Creating object: IO.Swagger.Model.MetaObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.MetaObject -ArgumentList @(
            ${creator},
            ${created},
            ${updated}
        )
    }
}
