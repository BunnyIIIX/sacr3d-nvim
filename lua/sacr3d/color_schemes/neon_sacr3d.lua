local util = require("sacr3d.utils.util")

local colors = {
    none = "NONE",
    bg = "#150b26", -- nvim bg
    fg = "#abb2bf", -- fg color (text)
    -- fg = "#f9f9f9", -- fg color (text)
    fg_gutter = "#3b4261",
    black = "#393b44",
    gray = "#2a2e36",
    red = "#ff5080",
    green = "#95ffa4",
    yellow = "#ffa378",
    blue = "#4ff2f1",
    magenta = "#906cff",
    cyan = "#aaffe4",
    white = "#dfdfe0",
    orange = "#EDC580",
    pink = "#ff80d2",
    black_br = "#7f8c98",
    red_bg = "#ee4c75",
    green_br = "#51ee72",
    yellow_br = "#FFE070",
    blue_br = "#91ddff",
    magenta_br = "#d97bf2",
    cyan_br = "#aaffc4",
    white_br = "#fdfdf0",
    orange_br = "#ffb378",
    pink_br = "#DF97DB",
    comment = "#526175",
    git = {
        add = "#dfdfe0",
        change = "#F8B58C",
        delete = "#e06c75",
        conflict = "#FFE070"
    },
}

--=> COLORS
-- "#150b26"
-- "#f9f9f9"
-- "#FDEBC3"
-- "#3b4261",
-- "#393b44",
-- "#2a2e36",
-- "#ff5080",
-- "#CF4F6D",
-- "#e06c75",
-- "#ffa378",
-- "#FFE070",
-- "#95ffa4",
-- "#51ee72",
-- "#4ff2f1",
-- "#96e2f0",
-- "#906cff",
-- "#d97bf2",
-- "#aaffe4",
-- "#63cdcf",
-- "#dfdfe0",
-- "#EDC580",
-- "#ff80d2",
-- "#7f8c98",
-- "#ee4c75",
-- "#58cd8b",
-- "#e0da3E",
-- "#91ddff",
-- "#B8A1E3",
-- "#fdfdf0",
-- "#ffb378",
-- "#DF97DB",
-- "#526175",
-- "#dfdfe0",
-- "#F8B58C",

util.bg = colors.bg
colors.bg_alt = util.darken(colors.bg, 0.75, "#000000")
colors.bg_highlight = util.brighten(colors.bg, 0.05)
colors.fg_alt = util.darken(colors.fg, 0.80, "#000000")

colors.diff = { -- git and native diffs
	add = colors.blue,
	change = colors.yellow,
	delete = colors.red,
	text = colors.blue,
	conflict = colors.magenta,
}

colors.black = util.darken(colors.bg, 0.8, "#000000")
colors.border_highlight = colors.blue
colors.border = colors.black

-- Popups and statusline should always be darker
colors.bg_popup = colors.bg_alt
colors.bg_statusline = colors.bg_alt

-- Sidebar and Floats
colors.bg_sidebar = colors.bg_alt
colors.bg_float = colors.bg_alt

colors.bg_visual = util.darken(colors.blue, 0.2)
colors.bg_search = util.darken(colors.cyan, 0.3)
colors.fg_sidebar = colors.fg_alt

colors.error = colors.red_br
colors.warning = colors.yellow
colors.info = colors.blue
colors.hint = colors.white_br
colors.variable = colors.white

return colors
