function New-PushWhereObjectDeviceToken {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${$in}
    )

    Process {
        'Creating object: IO.Swagger.Model.PushWhereObjectDeviceToken' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PushWhereObjectDeviceToken -ArgumentList @(
            ${$in}
        )
    }
}
