function New-UpdatedInstallationObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${updated}
    )

    Process {
        'Creating object: IO.Swagger.Model.UpdatedInstallationObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UpdatedInstallationObject -ArgumentList @(
            ${updated}
        )
    }
}
