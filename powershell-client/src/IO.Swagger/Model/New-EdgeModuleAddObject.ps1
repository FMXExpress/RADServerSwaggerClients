function New-EdgeModuleAddObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${modulename},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${protocol},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${protocolprops}
    )

    Process {
        'Creating object: IO.Swagger.Model.EdgeModuleAddObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.EdgeModuleAddObject -ArgumentList @(
            ${modulename},
            ${protocol},
            ${protocolprops}
        )
    }
}
