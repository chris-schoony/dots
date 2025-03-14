local wezterm = require("wezterm")
local font_size = require("font_size")

local config = wezterm.config_builder()

config.color_scheme = "catppuccin-mocha"
config.font = wezterm.font("Mononoki Nerd Font Mono")
config.enable_tab_bar = false
config.window_decorations = "NONE"

font_size.set(config)

return config
