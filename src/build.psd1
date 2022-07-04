@{
    Path = "AzExpression.psd1"
    OutputDirectory = "..\bin\AzExpression"
    Prefix = '.\_PrefixCode.ps1'
    SourceDirectories = 'Public'
    PublicFilter = 'Public\*.ps1'
    VersionedOutputDirectory = $true
    CopyPaths = @('./assets','../LICENSE','./en-US')
}