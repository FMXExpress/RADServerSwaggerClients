function New-EdgeModuleAddedObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${_id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${modulename}
    )

    Process {
        'Creating object: IO.Swagger.Model.EdgeModuleAddedObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.EdgeModuleAddedObject -ArgumentList @(
            ${_id},
            ${modulename}
        )
    }
}
