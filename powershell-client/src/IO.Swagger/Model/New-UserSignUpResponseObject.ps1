function New-UserSignUpResponseObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${_id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${sessionToken}
    )

    Process {
        'Creating object: IO.Swagger.Model.UserSignUpResponseObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UserSignUpResponseObject -ArgumentList @(
            ${_id},
            ${sessionToken}
        )
    }
}
