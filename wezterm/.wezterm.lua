local wezterm = require("wezterm")
local font_size = require("font_size")
local window_decorations = os.getenv("WEZTERM_WINDOW_DECORATIONS")

local config = wezterm.config_builder()

config.color_scheme = "catppuccin-mocha"
config.font = wezterm.font("Mononoki Nerd Font Mono")
config.enable_tab_bar = false
config.window_decorations = window_decorations and window_decorations or "RESIZE"

font_size.set(config)

return config
