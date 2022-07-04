# To build the module, make sure you have the module "ModuleBuilder" installed.

Import-Module 'ModuleBuilder' -ErrorAction 'Stop'

Push-Location -Path "$PSScriptRoot/../src" -StackName 'Builder'
New-ExternalHelp -Path '..\docs\en-US' -OutputPath '.\en-US'
Build-Module
