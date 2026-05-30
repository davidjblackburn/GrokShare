@{
    RootModule        = 'GrokShare.psm1'
    ModuleVersion     = '0.2.0'
    GUID              = 'a3f8c9e2-7b1d-4f5a-9c2e-8d6b4e1f3a7c'
    Author            = 'User + Grok'
    CompanyName       = 'Personal'
    Copyright         = '(c) 2026. All rights reserved.'
    Description       = 'Collect and parse information from Grok (grok.com / grok.x.ai) shared chat URLs. Provides structured objects, Markdown export, and a reliable browser-based extraction helper.'
    PowerShellVersion = '5.1'
    FunctionsToExport = @(
        'Get-GrokShare',
        'Get-GrokShareBrowserExtractor',
        'Export-GrokShare',
        'ConvertTo-GrokShareMarkdown',
        'Get-GrokShareBookmarklet',
        'Install-GrokShareBookmarklet'
    )
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @('ggs', 'grokshare')
    PrivateData       = @{
        PSData = @{
            Tags         = @('Grok', 'xAI', 'Chat', 'Share', 'Scraper', 'Export', 'Archive')
            LicenseUri   = ''
            ProjectUri   = ''
            IconUri      = ''
            ReleaseNotes = @'
0.2.0 - Compatibility fix for Windows PowerShell 5.1
- Removed -Depth parameter from ConvertFrom-Json (PS 5.1 does not support it)
- Added Install-GrokShareBookmarklet (one-click HTML + Desktop shortcut installer)
- Added Get-GrokShareBookmarklet
- Improved error messages

0.1.0 - Initial release.
- Browser JS extractor (most reliable method)
- Best-effort direct HTTP fetch for metadata
- Structured [GrokShare] objects
- Markdown export
- Full ToS / usage warning
'@
        }
    }
}
