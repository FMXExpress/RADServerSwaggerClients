function New-UseridObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${_id}
    )

    Process {
        'Creating object: IO.Swagger.Model.UseridObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UseridObject -ArgumentList @(
            ${_id}
        )
    }
}
