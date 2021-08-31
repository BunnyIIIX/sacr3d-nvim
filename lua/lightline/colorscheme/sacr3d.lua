local good, color_scheme = require("sacr3d.core.cs").get_color_scheme(
	require("sacr3d.config").options["cptcheme"]
)

if not good then
	print(color_scheme) -- error message
	return
end

local cpt = color_scheme
local sacr3d = {}

sacr3d.normal = {
	left = { { cpt.black, cpt.blue }, { cpt.blue, cpt.bg } },
	middle = { { cpt.blue, cpt.fg_gutter } },
	right = { { cpt.fg_sidebar, cpt.bg_statusline }, { cpt.blue, cpt.bg } },
	error = { { cpt.black, cpt.error } },
	warning = { { cpt.black, cpt.warning } },
}

sacr3d.insert = {
	left = { { cpt.black, cpt.green }, { cpt.blue, cpt.bg } },
}

sacr3d.visual = {
	left = { { cpt.black, cpt.magenta }, { cpt.blue, cpt.bg } },
}

sacr3d.replace = {
	left = { { cpt.black, cpt.red }, { cpt.blue, cpt.bg } },
}

sacr3d.inactive = {
	left = { { cpt.blue, cpt.bg_statusline }, { cpt.comment, cpt.bg } },
	middle = { { cpt.fg_gutter, cpt.bg_statusline } },
	right = { { cpt.fg_gutter, cpt.bg_statusline }, { cpt.comment, cpt.bg } },
}

sacr3d.tabline = {
	left = { { cpt.comment, cpt.bg_highlight }, { cpt.comment, cpt.bg } },
	middle = { { cpt.fg_gutter, cpt.bg_statusline } },
	right = { { cpt.fg_gutter, cpt.bg_statusline }, { cpt.comment, cpt.bg } },
	tabsel = { { cpt.blue, cpt.fg_gutter }, { cpt.comment, cpt.bg } },
}

return sacr3d
