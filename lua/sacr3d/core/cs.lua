local M = {}

local cs_remaps

function M.get_remaps()
	return cs_remaps
end

function M.set_remaps(val)
	cs_remaps = val
end

function M.get_color_scheme(cs)
	local remaps = M.get_remaps() or {}
	local good, color_scheme = pcall(require, "sacr3d.color_schemes." .. cs)

	if not good then
		return {
			status = false,
			msg = "sacr3d the colorscheme '" .. cs .. "' was not recognized. Defaulting to Dark sacr3d",
		},
			require("sacr3d.color_schemes.dark_sacr3d")
	end

	if not (next(remaps) == nil) then
		return { status = true }, vim.tbl_deep_extend("force", color_scheme, remaps)
	else
		return { status = true }, color_scheme
	end
end

return M
