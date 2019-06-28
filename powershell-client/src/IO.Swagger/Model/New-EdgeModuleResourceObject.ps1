function New-EdgeModuleResourceObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${resourcename},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${modulename},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moduleid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [IO.Swagger.Model.MetaEdgeModuleObject]
        ${_meta}
    )

    Process {
        'Creating object: IO.Swagger.Model.EdgeModuleResourceObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.EdgeModuleResourceObject -ArgumentList @(
            ${resourcename},
            ${modulename},
            ${moduleid},
            ${_meta}
        )
    }
}
