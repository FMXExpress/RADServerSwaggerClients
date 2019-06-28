function New-MetaEdgeModuleObject {
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
        'Creating object: IO.Swagger.Model.MetaEdgeModuleObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.MetaEdgeModuleObject -ArgumentList @(
            ${creator},
            ${created},
            ${updated}
        )
    }
}
