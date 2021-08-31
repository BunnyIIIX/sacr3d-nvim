local M = {}

function M.load(args)
	require("sacr3d.main").main("load", args)
end

function M.setup(custom_opts, remaps)
	remaps = remaps or {}
	require("sacr3d.config").set_options(custom_opts)
	require("sacr3d.core.cs").set_remaps(remaps)
end

return M
