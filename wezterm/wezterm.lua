local wezterm = require 'wezterm';

return {
	force_reverse_video_cursor = true,
	color_scheme = "nord",
	font = wezterm.font({ family = "Hasklug Nerd Font Mono", weight = "Light", freetype_render_target = "HorizontalLcd", harfbuzz_features = {"calt=0", "clig=0", "liga=0"} }),
	font_size = 13,
	window_close_confirmation = "NeverPrompt",
	hide_tab_bar_if_only_one_tab = true,
	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
	keys = {
		{ key = "f", mods = "SHIFT|CMD", action = "ToggleFullScreen" },
		{ key = "t", mods = "SHIFT|CMD", action = wezterm.action{ SpawnTab = "CurrentPaneDomain" } },
		{ key = "h", mods = "SHIFT|CMD", action = wezterm.action{ SplitHorizontal = {domain="CurrentPaneDomain"} } },
		{ key = "V", mods = "SHIFT|CMD", action = wezterm.action{ SplitVertical = {domain="CurrentPaneDomain"} } },
		{ key = "h", mods = "LEADER", action = wezterm.action{ AdjustPaneSize = {"Left", 5} } },
		{ key = "j", mods = "LEADER", action = wezterm.action{ AdjustPaneSize = {"Down", 5} } },
		{ key = "k", mods = "LEADER", action = wezterm.action{ AdjustPaneSize = {"Up", 5} } },
		{ key = "l", mods = "LEADER", action = wezterm.action{ AdjustPaneSize = {"Right", 5} } },
		{ key = "LeftArrow", mods = "SHIFT|CMD", action = wezterm.action{ ActivatePaneDirection = "Left"} },
		{ key = "RightArrow", mods = "SHIFT|CMD", action = wezterm.action{ ActivatePaneDirection = "Right"} },
		{ key = "UpArrow", mods = "SHIFT|CMD", action = wezterm.action{ ActivatePaneDirection = "Up"} },
		{ key = "DownArrow", mods = "SHIFT|CMD", action = wezterm.action{ ActivatePaneDirection= "Down"} },
		{ key = 'l', mods = 'ALT', action = wezterm.action{ ActivateTabRelative =-1} },
		{ key = 'h', mods = 'ALT', action = wezterm.action{ ActivateTabRelative = 1} },

	},
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
	initial_rows = 45,
	initial_cols = 170,
	native_macos_fullscreen_mode = true,
	exit_behavior = "Close",
	max_fps = 120,
}
