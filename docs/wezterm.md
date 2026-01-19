# WezTerm (Windows)

Config file: `wezterm/.wezterm.lua`

## Config Location

- `~/.wezterm.lua`

## Key Bindings

| Action | Shortcut |
|--------|----------|
| Shell launcher | `Ctrl+Shift+Space` |
| Copy | `Ctrl+Shift+C` |
| Paste | `Ctrl+V` / Right-click |
| New tab | `Ctrl+T` |
| Close tab | `Ctrl+Shift+W` |
| Next tab | `Ctrl+Tab` |
| Previous tab | `Ctrl+Shift+Tab` |
| Go to tab 1-5 | `Alt+1-5` |
| Split horizontal | `Ctrl+Alt+=` |
| Split vertical | `Ctrl+Alt+-` |
| Close pane | `Ctrl+W` |
| Navigate panes | `Alt+Arrow` |
| Font size +/- | `Ctrl+=` / `Ctrl+-` |
| Reset font size | `Ctrl+0` |
| Search | `Ctrl+Shift+F` |
| Fullscreen | `F11` |

## Features

- Multi-shell support (Nushell, PowerShell 7, Windows PowerShell, cmd, WSL)
- GitHub Dark theme with integrated title bar
- Font: JetBrains Mono + Sarasa Term SC (Chinese)
- WebGPU rendering (165Hz, optimized for high-end GPU)
- 50k line scrollback history
- Fancy tab bar with close buttons
- Kitty graphics protocol support

## Performance Optimizations

- Cursor blink disabled
- Animation FPS capped at 60
- WebGPU with HighPerformance power preference

## Installation

```powershell
Copy-Item .\wezterm\.wezterm.lua $HOME\.wezterm.lua
```

### Recommended Fonts

```powershell
winget install JetBrains.JetBrainsMono
winget install Sarasa.Gothic
```

### Optional: PowerShell 7

```powershell
winget install --id Microsoft.PowerShell --source winget
```
