#region Import functions

'API', 'Model', 'Private' | Get-ChildItem -Path {
    Join-Path $PSScriptRoot $_
} -Filter '*.ps1' | ForEach-Object {
    Write-Verbose "Importing file: $($_.BaseName)"
    try {
        . $_.FullName
    } catch {
        Write-Verbose "Can't import function!"
    }
}

#endregion


#region Initialize APIs

'Creating object: IO.Swagger.Api.ApiDocApi' | Write-Verbose
$Script:ApiDocApi= New-Object -TypeName IO.Swagger.Api.ApiDocApi -ArgumentList @($null)

'Creating object: IO.Swagger.Api.EdgeModulesApi' | Write-Verbose
$Script:EdgeModulesApi= New-Object -TypeName IO.Swagger.Api.EdgeModulesApi -ArgumentList @($null)

'Creating object: IO.Swagger.Api.EdgeModulesInvokersApi' | Write-Verbose
$Script:EdgeModulesInvokersApi= New-Object -TypeName IO.Swagger.Api.EdgeModulesInvokersApi -ArgumentList @($null)

'Creating object: IO.Swagger.Api.GroupsApi' | Write-Verbose
$Script:GroupsApi= New-Object -TypeName IO.Swagger.Api.GroupsApi -ArgumentList @($null)

'Creating object: IO.Swagger.Api.InstallationsApi' | Write-Verbose
$Script:InstallationsApi= New-Object -TypeName IO.Swagger.Api.InstallationsApi -ArgumentList @($null)

'Creating object: IO.Swagger.Api.PushApi' | Write-Verbose
$Script:PushApi= New-Object -TypeName IO.Swagger.Api.PushApi -ArgumentList @($null)

'Creating object: IO.Swagger.Api.UsersApi' | Write-Verbose
$Script:UsersApi= New-Object -TypeName IO.Swagger.Api.UsersApi -ArgumentList @($null)

'Creating object: IO.Swagger.Api.VersionApi' | Write-Verbose
$Script:VersionApi= New-Object -TypeName IO.Swagger.Api.VersionApi -ArgumentList @($null)


#endregion
