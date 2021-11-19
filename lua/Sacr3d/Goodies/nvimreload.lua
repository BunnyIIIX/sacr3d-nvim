local reload = require('nvim-reload')
-- local config_dirs = vim.fn.stdpath('config')
-- local plug_dirs = vim.fn.stdpath('config')
	-- .. '/lua/Goodies/plug'
-- local general_dirs = vim.fn.stdpath('config')
-- 	.. '/lua/General'
-- local utils_dirs = vim.fn.stdpath('config') .. '/lua/Utils'
-- local themes_dirs = vim.fn.stdpath('config') .. '/lua/themes'
-- local after_dirs = vim.fn.stdpath('config') .. '/after'

-- local data_dirs = vim.fn.stdpath('data')
-- 	.. '/site/pack/*/start/*'

---> Lua
--> Lua config dir to reload
reload.lua_reload_dirs = {
	vim.fn.stdpath('config')
	-- config_dirs,
	-- data_dirs
	-- utils_dirs,
	-- after,
	-- plug_dirs,
	-- general_dirs,
	-- themes_dirs
}

--> Reload external config/modules
-- reload.modules_reload_external = { 'packer' }
-- reload.modules_reload_external = {}

---> Viml
--> Viml config dir to reload
reload.vim_reload_dirs = {
	vim.fn.stdpath('config')
-- 	-- config_dirs,
-- 	-- plug_dirs,
-- 	-- general_dirs,
-- 	-- themes_dirs
}

--> Reload external config/modules
-- reload.files_reload_external = {}
-- reload.files_reload_external = {
-- vim.fn.stdpath('config') .. '/lua/Goodies/plug/init.lua',
-- vim.fn.stdpath('config') .. '/init.lua',
-- vim.fn.stdpath('config') .. '/lua/plugins.lua',
-- }

--> Pre reload hook plugins
-- reload.post_reload_hook = function()
-- vim.cmd('')
-- end

--> Post reload hook plugins
-- reload.post_reload_hook = function()
-- 	vim.cmd('colorscheme dark_sacr3d')
-- 	-- vim.cmd('let g:LspStart')
-- end
