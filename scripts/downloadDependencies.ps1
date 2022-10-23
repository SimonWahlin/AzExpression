param(
    [switch]
    $SkipDevDependencies
)

$ProjectRoot = Resolve-Path ($PSScriptRoot ? "$PSScriptRoot/.." : '.') | Select-Object -ExpandProperty Path
$TmpPath = "$ProjectRoot/tmp"
$ToolPath = "$TmpPath/tools"
$ModulePath = "$TmpPath/modules"
$PackagesPath = "$TmpPath/packages"
$PackagesConfig = Resolve-Path "$ProjectRoot/packages.txt"
$AssetPath = "$ProjectRoot/src/assets"
if (-not (Test-Path $PackagesConfig)) {
    throw "Cannot find file $PackagesConfig, are you in correct path?"
}

if (Test-Path $PackagesPath) {
    Remove-Item -Path $PackagesPath -Recurse -ErrorAction Stop
}
$null = New-Item -Path $PackagesPath -ItemType Directory -ErrorAction Stop
$null = New-Item -Path $AssetPath -ItemType Directory -ErrorAction Ignore
$null = New-Item -Path $ToolPath -ItemType Directory -ErrorAction Ignore
$null = New-Item -Path $ModulePath -ItemType Directory -ErrorAction Ignore

if (-not $SkipDevDependencies.IsPresent) {
    $RequiredModules = @(
        @{
            Name = 'platyPS'
            RequiredVersion = '0.14.2'
        }
        @{
            Name = 'ModuleBuilder'
            RequiredVersion = '2.0.0'
        }
    )
    foreach($req in $RequiredModules) {
        Save-Module @req -Path $ModulePath -Force
    }
}

dotnet tool restore

Push-Location $TmpPath
$Packages = Get-Content $PackagesConfig
dotnet tool run grab $Packages
Pop-Location

Get-ChildItem -Path "$PackagesPath/*/*/lib/netstandard2.0/*.dll" | Copy-Item -Destination $AssetPath -Force