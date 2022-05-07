-------------------------------------
--          sudo200's theme        --
--                                 --
--       Warning: This uses        --
-- https://github.com/rxi/json.lua --
-- for theme parsing from json     --
--                                 --
-- make sure to have it available  --
-- to awesome's lua interpreter    --
-------------------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local shape = require("gears.shape")
local themes_path = gfs.get_dir("config")

local json = require("json")

local file = io.open(themes_path .. "theme/theme.json", "r")

local theme = json.decode(file:read("*a"))

file:close()

theme.useless_gap   = dpi(2)
theme.border_width  = dpi(2)
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_focus
theme.border_marked = "#91231c"

theme.wibar_border_width = dpi(1)

theme.client_shape = function(cr, w, h) shape.rounded_rect(cr, w, h, 5) end

theme.hotkeys_border_width = theme.border_width
theme.hotkeys_border_color = theme.border_focus
theme.hotkeys_shape = theme.client_shape

theme.bg_systray = theme.bg_normal

theme.notification_shape = theme.client_shape

theme.menu_submenu_icon = themes_path.."theme/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

theme.titlebar_close_button_normal = themes_path.."theme/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."theme/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."theme/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."theme/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."theme/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."theme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."theme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."theme/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."theme/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."theme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."theme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."theme/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."theme/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."theme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."theme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."theme/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."theme/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."theme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."theme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."theme/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."theme/background.jpg"

theme.layout_fairh = themes_path.."theme/layouts/fairhw.png"
theme.layout_fairv = themes_path.."theme/layouts/fairvw.png"
theme.layout_floating  = themes_path.."theme/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."theme/layouts/magnifierw.png"
theme.layout_max = themes_path.."theme/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."theme/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."theme/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."theme/layouts/tileleftw.png"
theme.layout_tile = themes_path.."theme/layouts/tilew.png"
theme.layout_tiletop = themes_path.."theme/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."theme/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."theme/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."theme/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."theme/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."theme/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."theme/layouts/cornersew.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "Papirus-Dark"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
