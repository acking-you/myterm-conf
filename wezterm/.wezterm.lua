local wezterm = require 'wezterm'

return {
  -- ===== Default Shell =====
  default_prog = { 'nu', '--login' },

  -- ===== Shell Launcher Menu =====
  launch_menu = {
    { label = 'Nushell', args = { 'nu', '--login' } },
    { label = 'PowerShell 7', args = { 'pwsh', '-NoLogo' } },
    { label = 'Windows PowerShell', args = { 'powershell.exe', '-NoLogo' } },
    { label = 'cmd', args = { 'cmd.exe' } },
    { label = 'WSL (default)', args = { 'wsl.exe' } },
  },

  keys = {
    -- Shell launcher (Ctrl+Shift+Space)
    { key = 'Space', mods = 'CTRL|SHIFT', action = wezterm.action.ShowLauncherArgs { flags = 'LAUNCH_MENU_ITEMS' } },
    -- Copy/Paste (Ctrl+Shift+C/V to avoid conflict with Ctrl+C interrupt)
    { key = 'c', mods = 'CTRL|SHIFT', action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection' },
    { key = 'v', mods = 'CTRL', action = wezterm.action.PasteFrom 'Clipboard' },
    -- Tabs
    { key = 'T', mods = 'CTRL', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
    { key = 'W', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentTab { confirm = true } },
    { key = 'Tab', mods = 'CTRL', action = wezterm.action.ActivateTabRelative(1) },
    { key = 'Tab', mods = 'CTRL|SHIFT', action = wezterm.action.ActivateTabRelative(-1) },
    { key = '1', mods = 'ALT', action = wezterm.action.ActivateTab(0) },
    { key = '2', mods = 'ALT', action = wezterm.action.ActivateTab(1) },
    { key = '3', mods = 'ALT', action = wezterm.action.ActivateTab(2) },
    { key = '4', mods = 'ALT', action = wezterm.action.ActivateTab(3) },
    { key = '5', mods = 'ALT', action = wezterm.action.ActivateTab(4) },
    -- Split panes
    { key = '=', mods = 'CTRL|ALT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = '-', mods = 'CTRL|ALT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = 'W', mods = 'CTRL', action = wezterm.action.CloseCurrentPane { confirm = true } },
    -- Navigate panes
    { key = 'LeftArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Left' },
    { key = 'RightArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Right' },
    { key = 'UpArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Up' },
    { key = 'DownArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Down' },
    -- Font size
    { key = '=', mods = 'CTRL', action = wezterm.action.IncreaseFontSize },
    { key = '-', mods = 'CTRL', action = wezterm.action.DecreaseFontSize },
    { key = '0', mods = 'CTRL', action = wezterm.action.ResetFontSize },
    -- Search
    { key = 'F', mods = 'CTRL|SHIFT', action = wezterm.action.Search { CaseSensitiveString = '' } },
    -- Fullscreen
    { key = 'F11', mods = 'NONE', action = wezterm.action.ToggleFullScreen },
  },

  -- Right-click to paste
  mouse_bindings = {
    { event = { Down = { streak = 1, button = 'Right' } }, mods = 'NONE', action = wezterm.action.PasteFrom 'Clipboard' },
  },

  -- ===== Appearance =====
  color_scheme = 'GitHub Dark',
  colors = {
    scrollbar_thumb = '#6e7681',
  },

  -- Title bar colors
  window_frame = {
    active_titlebar_bg = '#24292e',
    inactive_titlebar_bg = '#1f2428',
  },

  -- Tab bar (fancy for close button)
  use_fancy_tab_bar = true,
  hide_tab_bar_if_only_one_tab = false,
  tab_bar_at_bottom = false,
  show_tab_index_in_tab_bar = false,
  show_close_tab_button_in_tabs = true,
  tab_max_width = 25,
  switch_to_last_active_tab_when_closing_tab = true,

  -- Scrollbar
  enable_scroll_bar = true,
  scrollback_lines = 50000,

  -- Dim inactive panes
  inactive_pane_hsb = { saturation = 0.9, brightness = 0.7 },

  -- Window padding
  window_padding = {
    left = 10, right = 10, top = 10, bottom = 8,
  },

  -- ===== Font =====
  font = wezterm.font_with_fallback({
    'JetBrains Mono',
    'Sarasa Term SC',  -- Chinese support
    'Microsoft YaHei', -- Fallback Chinese
    'Cascadia Mono',
    'Consolas',
  }),
  font_size = 12.5,
  line_height = 1.05,

  -- Prevent window resize when changing font size
  adjust_window_size_when_changing_font_size = false,

  -- Window decorations (integrated title bar)
  window_decorations = 'INTEGRATED_BUTTONS|RESIZE',
  integrated_title_button_style = 'Windows',

  -- Hide mouse cursor when typing
  hide_mouse_cursor_when_typing = true,

  -- ===== Rendering (optimized for high-end GPU) =====
  front_end = 'WebGpu',
  webgpu_power_preference = 'HighPerformance',
  max_fps = 165,
  animation_fps = 60,

  -- Performance optimizations
  enable_kitty_graphics = true,
  enable_csi_u_key_encoding = false,
  unicode_version = 14,
  cursor_blink_rate = 0,
  default_cursor_style = 'SteadyBlock',

  -- Word boundary for selection
  selection_word_boundary = " \t\n{}[]()\"'`,;:",
}
