--=>> Load All packer
require('impatient')
require('Sacr3d.packer_compiled')
require('Sacr3d.plugins')

--=>> load keybindings and editor options
-- require('General')
require('Sacr3d.Setting')

--=>> Themes
--> Loading library
local scheme = require('Sacr3d.Utils.scheme')

--> Load editor color theme
scheme.load_scheme('sacr3d')
-- scheme.load_scheme('everforest')

--> Load statusline theme
scheme.load_lualine_scheme('sacr3d')
-- scheme.load_lualine_scheme('everforest')

--> If you don't  want to specify the theme for each component,
--> you can use the following function
-- scheme.load_shared_scheme('sacr3d')
-- scheme.load_shared_scheme('everforest')

--=>> Configurations
--> Loads plugin configurations
require('Sacr3d.Goodies')
--> Handles all lsp server configuration
require('Sacr3d.Lsp')
--> Loads user contrib files (work in progress)
-- require('Goodies.modules')
vim.cmd('source ~/.config/Sacr3d-nvim/lua/Sacr3d/Goodies/wiki.vim')

