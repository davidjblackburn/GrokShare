# GrokShare

PowerShell module for extracting and exporting conversations from public Grok (xAI) share links.

## Features

- Extract full conversations from `https://grok.com/share/...` links
- Reliable bookmarklet-based extraction (bypasses CSP restrictions)
- Export to Markdown, JSON, or plain text
- Works on Windows PowerShell 5.1 and PowerShell 7+

## Installation

### From GitHub (Recommended)

```powershell
# Clone the repository
git clone https://github.com/davidjblackburn/GrokShare.git
cd GrokShare

# Import the module
Import-Module .\GrokShare.psd1 -Force
```

### From Local Module Folder

```powershell
Import-Module "$HOME\Documents\WindowsPowerShell\Modules\GrokShare\GrokShare.psd1" -Force
```

Add to your `$PROFILE` for permanent availability.

## Quick Start (Recommended)

Because `grok.com` has strict Content Security Policies, the **bookmarklet** method is the most reliable way to extract conversations.

```powershell
# 1. Generate the bookmarklet
Install-GrokShareBookmarklet
```

Follow the on-screen instructions to add the bookmark to your browser.

Then:

1. Open any `https://grok.com/share/...` page
2. Click your **GrokShare Extractor** bookmark
3. Copy the JSON (it will try to copy automatically, or show a box)
4. In PowerShell:

```powershell
Get-GrokShare -FromClipboard | Export-GrokShare -Path .\conversation.md -Format Markdown
```

## Available Commands

| Command                        | Description                              |
|--------------------------------|------------------------------------------|
| `Get-GrokShare`                | Main command – parse extracted JSON      |
| `Install-GrokShareBookmarklet` | One-click installer for the bookmarklet  |
| `Get-GrokShareBookmarklet`     | Returns raw bookmarklet code             |
| `Get-GrokShareBrowserExtractor`| Older console-paste method               |
| `Export-GrokShare`             | Export to Markdown / JSON / Text         |
| `ConvertTo-GrokShareMarkdown`  | Convert to Markdown string               |

## Important Notes

- There is **no official public API** from xAI for reading existing Grok share links.
- This module uses browser-based extraction because Grok share pages are heavily client-rendered.
- Always respect xAI's Terms of Service. Use responsibly and only on conversations you have legitimate access to.

## License

MIT License

## Contributing

Contributions are welcome! Feel free to open issues or pull requests.