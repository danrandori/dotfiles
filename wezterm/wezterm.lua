local wezterm = require 'wezterm';

return {
	force_reverse_video_cursor = true,
	colors = {
		foreground = "#dcd7ba",
		background = "#1f1f28",

		cursor_bg = "#c8c093",
		cursor_fg = "#c8c093",
		cursor_border = "#c8c093",

		selection_fg = "#c8c093",
		selection_bg = "#2d4f67",

		scrollbar_thumb = "#16161d",
		split = "#16161d",

		ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
		brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
		indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
	},
	-- color_scheme = "nord",
	font = wezterm.font({ family = "Hasklug Nerd Font Mono", weight = "Light", freetype_render_target = "HorizontalLcd", harfbuzz_features = {"calt=0", "clig=0", "liga=0"} }),
	font_size = 23,
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
	},
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
	initial_rows = 45,
	initial_cols = 160,
	native_macos_fullscreen_mode = true,
	exit_behavior = "Close",
	max_fps = 60,
}
