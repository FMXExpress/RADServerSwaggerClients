function New-EdgeModuleObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${modulename},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${_id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${protocol},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${protocolprops},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [IO.Swagger.Model.MetaEdgeModuleObject]
        ${_meta}
    )

    Process {
        'Creating object: IO.Swagger.Model.EdgeModuleObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.EdgeModuleObject -ArgumentList @(
            ${modulename},
            ${_id},
            ${protocol},
            ${protocolprops},
            ${_meta}
        )
    }
}
