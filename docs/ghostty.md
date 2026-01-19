# Ghostty (macOS)

Config file: `ghostty/config`

## Config Location

- macOS: `~/Library/Application Support/com.mitchellh.ghostty/config`
- XDG fallback: `~/.config/ghostty/config`

## Highlights

- Catppuccin Frappe (dark) + Latte (light), auto-switching by system appearance.
- JetBrains Mono with CJK/emoji fallbacks (Sarasa Term SC, PingFang SC, Apple Color Emoji).
- Subtle transparency + background blur.
- Balanced window padding for readability.
- Block cursor, no blink, hide mouse while typing.
- macOS tweaks: Option as Alt, tab-style titlebar, save window state.
- Quick terminal at the top with a global toggle.
- SSH terminfo shell integration to avoid garbled remote output.

## Keybindings

| Action | Shortcut |
|--------|----------|
| Copy (only when selection exists) | `Cmd+C` |
| Paste | `Cmd+V` |
| New tab | `Cmd+T` |
| Close tab | `Cmd+W` |
| Close window | `Cmd+Shift+W` |
| Next tab | `Cmd+Shift+]` |
| Previous tab | `Cmd+Shift+[` |
| Split right | `Cmd+D` |
| Split down | `Cmd+Shift+D` |
| Command palette | `Cmd+Shift+Space` |
| Open config | `Cmd+Shift+O` |
| Reload config | `Cmd+Shift+R` |
| Quick terminal (global) | `Cmd+` (backquote) |

## Notes

- Use `ghostty +list-themes` to view all available theme names.
- The global quick terminal keybind requires Accessibility permissions.
- If you prefer ligatures, remove the `font-feature = -calt` line.
