function New-InstallationAddedObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${_id}
    )

    Process {
        'Creating object: IO.Swagger.Model.InstallationAddedObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.InstallationAddedObject -ArgumentList @(
            ${_id}
        )
    }
}
