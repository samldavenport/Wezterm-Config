-- Pull in the wezterm API
local wezterm = require("wezterm")

font_antialias = 'Greyscale' 

-- This will hold the configuration.
local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.font               = wezterm.font("SauceCodePro Nerd Font Mono",{weight="Regular", stretch='Normal', style=Normal})
config.font_size          = 12.0 
config.default_cwd        = ".\\source\\repos"
config.default_prog       = { "powershell.exe", "-nologo" }

--cursor
config.default_cursor_style  = "BlinkingBlock"
config.cursor_blink_rate     = 500
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_ease_in  = "Constant"

--colors
config.color_scheme = "Gruvbox Material (Gogh)"
config.colors       = {

	background = "#202020",
	cursor_bg = "#b1fc03",
}


-- and finally, return the configuration to wezterm
return config
