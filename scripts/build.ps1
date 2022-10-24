# To build the module, make sure you have the modules "ModuleBuilder" and "platyPS" installed.

Import-Module 'ModuleBuilder' -ErrorAction 'Stop'
Import-Module 'platyPS' -ErrorAction 'Stop'

Push-Location -Path "$PSScriptRoot/../src"
$null = New-ExternalHelp -Path '../docs/en-US' -OutputPath './en-US'

try {
    $Version = gitversion /showvariable LegacySemVerPadded
}
catch {
    $Version = [string]::Empty
}
Build-Module -SemVer $Version
Pop-Location

Compress-Archive -Path "$PSScriptRoot/../bin/AzExpression" -DestinationPath "$PSScriptRoot/../AzExpression.zip" -Force