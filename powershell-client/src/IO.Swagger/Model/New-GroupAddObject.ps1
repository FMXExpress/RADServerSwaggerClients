function New-GroupAddObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${groupname}
    )

    Process {
        'Creating object: IO.Swagger.Model.GroupAddObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.GroupAddObject -ArgumentList @(
            ${groupname}
        )
    }
}
