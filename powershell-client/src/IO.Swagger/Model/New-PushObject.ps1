function New-PushObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [IO.Swagger.Model.PushDataObject]
        ${data},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${channels},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [IO.Swagger.Model.PushWhereObject]
        ${where}
    )

    Process {
        'Creating object: IO.Swagger.Model.PushObject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PushObject -ArgumentList @(
            ${data},
            ${channels},
            ${where}
        )
    }
}
