function New-UserTokenObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${username},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [IO.Swagger.Model.MetaObject]
        ${_meta},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${sessiontoken}
    )

    Process {
        'Creating object: IO.Swagger.Model.UserTokenObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UserTokenObject -ArgumentList @(
            ${id},
            ${username},
            ${_meta},
            ${sessiontoken}
        )
    }
}
