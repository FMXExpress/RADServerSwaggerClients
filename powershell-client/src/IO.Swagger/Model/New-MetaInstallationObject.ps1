function New-MetaInstallationObject {
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
        'Creating object: IO.Swagger.Model.MetaInstallationObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.MetaInstallationObject -ArgumentList @(
            ${creator},
            ${created},
            ${updated}
        )
    }
}
