local M = {}

local utils = require("sacr3d.utils.util")

local function load(colorscheme)
	local sacr3d = require("sacr3d")

	if sacr3d.before_loading ~= nil then
		sacr3d.before_loading()
	end

	-- colorscheme gets evaluated from mapper.lua
	local theme = require("sacr3d.core.mapper").apply(colorscheme)
	utils.load(theme)

	if sacr3d.after_loading ~= nil then
		sacr3d.after_loading()
	end
end

local function clear()
	vim.cmd("hi clear")
end

function M.main(option, args)
	option = option or "load"

	if option == "load" then
		load(args)
	elseif option == "clear" then
		clear()
	else
		print("sacr3d  option was not recognized")
	end
end

return M
