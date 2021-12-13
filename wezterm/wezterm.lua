local wezterm = require 'wezterm';

return {
	colors = {
		foreground = "#b9bfca",
		background = "#2e3440",
		cursor_bg = "#b9bfca",
		cursor_border = "#b9bfca",
		cursor_fg = "#2e3440",
		selection_bg = "#3e4655",
		selection_fg = "#b9bfca",
		ansi = {"#3b4252", "#bf616a", "#a3be8c", "#ebcb8b", "#81a1c1", "#b48ead", "#88c0d0", "#e5e9f0"},
		brights = {"#465780", "#d06f79", "#b1d196", "#f0d399", "#8cafd2", "#c895bf", "#93ccdc", "#e7ecf4"},
	},
	font = wezterm.font("Hasklug Nerd Font Mono", { weight = "ExtraLight" }),
	font_size = 18.5,
	window_close_confirmation = "NeverPrompt",
	hide_tab_bar_if_only_one_tab = true,
	keys = {
		{ key = "f", mods = "SHIFT|CMD", action = "ToggleFullScreen" },
		{ key="t", mods="SHIFT|CMD", action = wezterm.action{ SpawnTab = "CurrentPaneDomain" }},
		{ key="h", mods="SHIFT|CMD", action=wezterm.action{ SplitHorizontal={domain="CurrentPaneDomain"} } },
		{ key="V", mods="SHIFT|CMD", action=wezterm.action{ SplitVertical={domain="CurrentPaneDomain"} } },
	},
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
}
