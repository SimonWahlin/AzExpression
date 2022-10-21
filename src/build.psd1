@{
    Path                     = "AzExpression.psd1"
    OutputDirectory          = "..\bin\AzExpression"
    Prefix                   = '.\_prefixCode.ps1'
    SourceDirectories        = 'public'
    PublicFilter             = 'public\*.ps1'
    VersionedOutputDirectory = $true
    CopyPaths                = @('./assets', '../LICENSE', './en-US')
}