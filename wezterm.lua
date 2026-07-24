-- Pull in the wezterm API
local wezterm                = require("wezterm")

font_antialias               = 'Greyscale'

local config                 = wezterm.config_builder()

config.window_decorations    = "RESIZE"
config.font                  = wezterm.font(
    "SauceCodePro Nerd Font Mono",
    {
        weight  = "Regular",
        stretch = 'Normal',
        style   = Normal
    }
)
config.font_size             = 12.0
config.default_cwd           = ".\\source\\repos"
config.default_prog          = { "powershell.exe", "-nologo" }

--cursor
config.default_cursor_style  = "BlinkingBlock"
config.cursor_blink_rate     = 500
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_ease_in  = "Constant"


math.randomseed(os.time())
local config_dir = wezterm.config_dir
local image_dir = config_dir .. "/images"

local images = {}

for _, file in ipairs(wezterm.read_dir(image_dir)) do
    if file:match("%.png$") or
        file:match("%.jpg$") or
        file:match("%.jpeg$") or
        file:match("%.webp$") then
        table.insert(images, file)
    end
end

config.window_background_opacity = 1.0

config.background                = {
    -- LAYER 1 (Bottom): The solid base color to block the desktop bleed
    {
        source           = {
            Color = '#1D2021', -- Put your preferred background hex color here
        },
        width            = '100%',
        height           = '100%',
        opacity          = 1.0, 
        horizontal_align = "Center",
        vertical_align   = "Middle",
        repeat_x         = "NoRepeat",
        repeat_y         = "NoRepeat",
    },

    -- Random image over the solid color
    {
        source = {
            File = images[math.random(#images)],
        },
        opacity = 0.1
    }
}

--colors
config.color_scheme              = "Gruvbox Material (Gogh)"
config.colors                    = {

    cursor_bg = "#b1fc03",
}


-- and finally, return the configuration to wezterm
return config
