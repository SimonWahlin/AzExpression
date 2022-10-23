$requirements = @(
    @{
        Name = 'Pester'
        RequiredVersion = '5.3.3'
    }
)

$ModulesPath = "$PSScriptRoot\..\tmp\modules"
if(-not (Test-Path -Path $ModulesPath)) {
    $null = New-Item -ItemType Directory -Force -Path $ModulesPath
}
foreach($req in $requirements) {
    Save-Module @req -Path $ModulesPath -Force
}


