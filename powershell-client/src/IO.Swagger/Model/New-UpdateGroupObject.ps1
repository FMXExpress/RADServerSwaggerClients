function New-UpdateGroupObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${fieldName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${users}
    )

    Process {
        'Creating object: IO.Swagger.Model.UpdateGroupObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UpdateGroupObject -ArgumentList @(
            ${fieldName},
            ${users}
        )
    }
}
