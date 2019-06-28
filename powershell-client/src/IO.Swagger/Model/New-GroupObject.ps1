function New-GroupObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [IO.Swagger.Model.MetaGroupObject]
        ${_meta},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${users}
    )

    Process {
        'Creating object: IO.Swagger.Model.GroupObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.GroupObject -ArgumentList @(
            ${name},
            ${_meta},
            ${users}
        )
    }
}
