-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

--> Parser for Markdown '.md' filetype
parser_configs.markdown = {
	install_info = {
		url = 'https://github.com/ikatyang/tree-sitter-markdown',
		files = { 'src/parser.c', 'src/scanner.cc' },
	},
	filetype = 'markdown',
}

--> Parser for Neorg '.norg' filetype
parser_configs.norg = {
	install_info = {
		url = 'https://github.com/nvim-neorg/tree-sitter-norg',
		files = { 'src/parser.c', 'src/scanner.cc' },
		branch = 'main',
	},
}

-- Bash parser doesn't work well for ZSH
parser_configs.bash.used_by = { 'PKGBUILD' }

--> TreeSitter setup
require('nvim-treesitter.configs').setup({
	ensure_installed = { 'norg', 'lua', 'bash', 'vim' },
	ignore_install = {}, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		-- loaded = true,
		disable = {}, -- list of language that will be disabled
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = true,
	},
})

-- require'nvim-treesitter.configs'.setup {
-- 	ensure_installed = { "bash" },
-- 	ignore_install = {},
-- 	modules = {
-- 		highlight = {
-- 			-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
-- 			-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
-- 			-- Using this option may slow down your editor, and you may see some duplicate highlights.
-- 			-- Instead of true it can also be a list of languages
-- 			additional_vim_regex_highlighting = true,
-- 			custom_captures = {},
-- 			disable = {},
-- 			enable = true,
-- 			loaded = true,
-- 			module_path = "nvim-treesitter.highlight"
-- 		},
-- 		incremental_selection = {
-- 			disable = {},
-- 			enable = false,
-- 			keymaps = {
-- 				init_selection = "gnn",
-- 				node_decremental = "grm",
-- 				node_incremental = "grn",
-- 				scope_incremental = "grc"
-- 			},
-- 			module_path = "nvim-treesitter.incremental_selection"
-- 		},
-- 		indent = {
-- 			disable = {},
-- 			enable = false,
-- 			module_path = "nvim-treesitter.indent"
-- 		}
-- 	},
-- 	-- update_strategy = "lockfile"
-- }

-->> Keybinds
-- bind('n', '<leader>l', ':TSHighlightCapturesUnderCursor<cr>', 'noremap', 'silent')
