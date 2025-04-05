-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font")
config.default_cwd = ".\\source\\repos"
config.default_prog = { "powershell.exe", "-nologo" }

--cursor
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 500
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_ease_in = "Constant"

--colors
config.color_scheme = "Gruvbox Material (Gogh)"
config.colors = {

	background = "#202020",
	cursor_bg = "#b8bb26",
}

--config.window_decorations = "RESIZE"

config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

-- and finally, return the configuration to wezterm
return config
