function New-UpdateInstallationObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${channels}
    )

    Process {
        'Creating object: IO.Swagger.Model.UpdateInstallationObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UpdateInstallationObject -ArgumentList @(
            ${channels}
        )
    }
}
