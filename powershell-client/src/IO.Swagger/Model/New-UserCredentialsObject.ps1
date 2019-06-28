function New-UserCredentialsObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${username},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${password}
    )

    Process {
        'Creating object: IO.Swagger.Model.UserCredentialsObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UserCredentialsObject -ArgumentList @(
            ${username},
            ${password}
        )
    }
}
