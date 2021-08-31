local err, color_scheme = require("sacr3d.core.cs").get_color_scheme(
	require("sacr3d.config").options["colorscheme"]
)

if not err.status then
	vim.api.nvim_err_writeln(err.msg)
end

local cpt = color_scheme
local sacr3d = {}

sacr3d.normal = {
	a = { bg = cpt.blue, fg = cpt.black },
	b = { bg = cpt.fg_gutter, fg = cpt.blue },
	c = { bg = cpt.bg_statusline, fg = cpt.fg_sidebar },
}

sacr3d.insert = {
	a = { bg = cpt.green, fg = cpt.black },
	b = { bg = cpt.fg_gutter, fg = cpt.green },
}

sacr3d.command = {
	a = { bg = cpt.orange, fg = cpt.black },
	b = { bg = cpt.fg_gutter, fg = cpt.orange },
}

sacr3d.visual = {
	a = { bg = cpt.magenta, fg = cpt.black },
	b = { bg = cpt.fg_gutter, fg = cpt.magenta },
}

sacr3d.replace = {
	a = { bg = cpt.red_bg, fg = cpt.black },
	b = { bg = cpt.fg_gutter, fg = cpt.red_bg },
}

sacr3d.inactive = {
	a = { bg = cpt.bg_statusline, fg = cpt.blue },
	b = { bg = cpt.bg_statusline, fg = cpt.fg_gutter, gui = "bold" },
	c = { bg = cpt.bg_statusline, fg = cpt.fg_gutter },
}

return sacr3d
