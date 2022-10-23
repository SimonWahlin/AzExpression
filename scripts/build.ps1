# To build the module, make sure you have the modules "ModuleBuilder" and "platyPS" installed.

Import-Module 'ModuleBuilder' -ErrorAction 'Stop'
Import-Module 'platyPS' -ErrorAction 'Stop'

Push-Location -Path "$PSScriptRoot/../src"
$null = New-ExternalHelp -Path '../docs/en-US' -OutputPath './en-US'
Build-Module
Pop-Location

Compress-Archive -Path "$PSScriptRoot/../bin/AzExpression" -DestinationPath "$PSScriptRoot/../BicepNet.PS.zip" -Force