--[[==================================================]]
--[[                     COQ.NVIM                     ]]
--[[==================================================]]
local g = vim.g

--=>> Coq-Settings <<=--
g.coq_settings = {
	auto_start = 'shut-up',
	keymap = {
		recommended = true,
		pre_select = false,
		manual_complete = '<C-Space>',
		bigger_preview = '<c-b>',
		jump_to_mark = '<C-Right>',
		eval_snips = '<c-y>',
		-- repeat = 'null',
	},
	display = {
		mark_highlight_group = 'Pmenu',
		pum = {
			fast_close = true,
			y_max_len = 10,
			y_ratio = 0.5,
			x_max_len = 40,
			x_truncate_len = 12,
			ellipsis = '...',
			kind_context = { ' [', ']' },
			source_context = { '「', '」' },
		},
		preview = {
			x_max_len = 88,
			resolve_timeout = 0.09,
			border = 'rounded',
			-- "single", "double", "rouned", "solid", "shadow"
			positions = {
				north = 1,
				south = 2,
				west = 3,
				east = 4,
			},
		},
		icons = {
			mode = 'short',
		},
		ghost_text = {
			enabled = true,
			context = { '〈 ', ' 〉' },
			highlight_group = 'Comment',
		},
	},
	clients = {
		snippets = {
			user_path = '$NVIM_HOME/coq-user-snippets',
		},
		lsp = {
			enabled = true,
			short_name = 'LSP',
			resolve_timeout = 0.06,
			weight_adjust = 0.3,
		},
		tree_sitter = {
			enabled = true,
			short_name = 'TS',
			path_sep = ' ⇊',
			search_context = 168,
			slow_threshold = 0.168,
			weight_adjust = 0,
		},
		tabnine = {
			enabled = false,
			short_name = 'T9',
			weight_adjust = -0.1,
		},
	},
}

local lsp = require('lspconfig')
local coq = require('coq') -- add this

lsp.vimls.setup(coq.lsp_ensure_capabilities()) -- after

--{{{ Default
-- match:
--   unifying_chars:
--     - "_"
--     - "-"
--   max_results: 33
--   proximate_lines: 16
--   exact_matches: 2
--   look_ahead: 2
--   fuzzy_cutoff: 0.6
--
-- weights:
--   prefix_matches: 2.0
--   edit_distance: 1.5
--   recency: 1.0
--   proximity: 0.5
--
-- display:
--   ghost_text:
--     enabled: True
--     context:
--       - " 〈 "
--       - " 〉"
--     highlight_group: Comment
--
--   pum:
--     fast_close: True
--
--     y_max_len: 16
--     y_ratio: 0.3
--
--     x_max_len: 66
--     x_truncate_len: 12
--
--     ellipsis: …
--     kind_context:
--       - " ["
--       - "]"
--     source_context:
--       - "「"
--       - "」"
--
--   preview:
--     x_max_len: 88
--     resolve_timeout: 0.09
--     border: rounded
--     positions:
--       north: 1
--       south: 2
--       west: 3
--       east: 4
--
--   time_fmt: "%Y-%m-%d %H:%M"
--   mark_highlight_group: Pmenu
--
--   icons:
--     mode: long
--     spacing: 1
--     aliases:
--       Conditional: Keyword
--       Float: Number
--       Include: Property
--       Label: Keyword
--       Member: Property
--       Repeat: Keyword
--       Structure: Struct
--       Type: TypeParameter
--     mappings:
--       Boolean: ""
--       Character: ""
--       Class: ""
--       Color: ""
--       Constant: ""
--       Constructor: ""
--       Enum: ""
--       EnumMember: ""
--       Event: "ﳅ"
--       Field: ""
--       File: ""
--       Folder: "ﱮ"
--       Function: "ﬦ"
--       Interface: ""
--       Keyword: ""
--       Method: ""
--       Module: ""
--       Number: ""
--       Operator: "Ψ"
--       Parameter: ""
--       Property: "ﭬ"
--       Reference: ""
--       Snippet: ""
--       String: ""
--       Struct: "ﯟ"
--       Text: ""
--       TypeParameter: ""
--       Unit: ""
--       Value: ""
--       Variable: "ﳛ"
--
-- limits:
--   index_cutoff: 333333
--   idle_timeout: 1.88
--
--   completion_auto_timeout: 0.088
--   completion_manual_timeout: 0.66
--
--   download_retries: 6
--   download_timeout: 66.0
--
-- clients:
--   tabnine:
--     enabled: False
--     short_name: "T9"
--     weight_adjust: -0.1
--
--   third_party:
--     enabled: True
--     short_name: "3P"
--     weight_adjust: 0
--
--   tmux:
--     enabled: True
--     short_name: "TMUX"
--     match_syms: False
--     weight_adjust: 0
--
--   buffers:
--     enabled: True
--     short_name: "BUF"
--     match_syms: False
--     same_filetype: False
--     weight_adjust: 0
--
--   tree_sitter:
--     enabled: True
--     short_name: "TS"
--     path_sep: " ⇊"
--     search_context: 168
--     slow_threshold: 0.168
--     weight_adjust: 0
--
--   paths:
--     enabled: True
--     short_name: "PATH"
--     resolution:
--       - cwd
--       - file
--     path_seps: []
--     preview_lines: 6
--     weight_adjust: 0
--
--   snippets:
--     enabled: True
--     short_name: "SNIP"
--     weight_adjust: 0
--     user_path: null
--     warn:
--       - missing
--       - outdated
--
--   tags:
--     enabled: True
--     short_name: "TAG"
--     parent_scope: " ⇊"
--     path_sep: " ⇉ "
--     weight_adjust: 0
--
--   lsp:
--     enabled: True
--     short_name: "LSP"
--     resolve_timeout: 0.06
--     weight_adjust: 0.3
-- }}}

-- {{{ Old settings
-- local system_name
-- if vim.fn.has('mac') == 1 then
-- 	system_name = 'macOS'
-- elseif vim.fn.has('unix') == 1 then
-- 	system_name = 'Linux'
-- elseif vim.fn.has('win32') == 1 then
-- 	system_name = 'Windows'
-- else
-- 	print('Unsupported system for sumneko')
-- end
--
-- local nvim_lsp = require('lspconfig')
-- local coq = require('coq')
--
-- local sumneko_root_path =
-- 	'/data/data/com.termux/files/usr/lib/lua-language-server'
-- local sumneko_binary =
-- 	'/data/data/com.termux/files/usr/lib/lua-language-server/lua-language-server'
-- local runtime_path = vim.split(package.path, ';')
-- table.insert(runtime_path, 'lua/?.lua')
-- table.insert(runtime_path, 'lua/?/init.lua')

-- nvim_lsp.sumneko_lua.setup({
-- 	capabilities = coq.lsp_ensure_capabilities(
-- 		vim.lsp.protocol.make_client_capabilities()
-- 	),
-- 	cmd = {
-- 		sumneko_binary,
-- 		'-E',
-- 		sumneko_root_path .. '/main.lua',
-- 	},
-- 	filetypes = { 'lua' },
-- 	-- log_level = 2,
-- 	root_dir = function()
-- 		vim.fn.getcwd()
-- 	end,
-- 	-- root_dir = root_pattern(".git"), -- or bufdir
-- 	settings = {
-- 		Lua = {
-- 			telemetry = {
-- 				enable = true,
-- 			},
-- 			diagnostics = {
-- 				-- Get the language server to recognize the `vim` global
-- 				globals = { 'vim' },
-- 			},
-- 			runtime = {
-- 				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
-- 				version = 'LuaJIT',
-- 				-- Setup your lua path
-- 				path = runtime_path,
-- 			},
-- 		},
-- 	},
-- })
--
-- nvim_lsp.bashls.setup({
-- 	cmd = { 'bash-language-server', 'start' },
-- 	cmd_env = {
-- 		GLOB_PATTERN = '*@(.sh|.inc|.bash|.command)',
-- 	},
-- 	filetypes = { 'sh', 'bash', 'zsh' },
-- })
--
-- nvim_lsp.vimls.setup({
-- 	cmd = { 'vim-language-server', '--stdio' },
-- 	filetypes = { 'vim' },
-- 	init_options = {
-- 		diagnostic = {
-- 			enable = true,
-- 		},
-- 		indexes = {
-- 			count = 3,
-- 			gap = 100,
-- 			projectRootPatterns = {
-- 				'runtime',
-- 				'nvim',
-- 				'.git',
-- 				'autoload',
-- 				'plugin',
-- 			},
-- 			runtimepath = true,
-- 		},
-- 		iskeyword = '@,48-57,_,192-255,-#',
-- 		runtimepath = '',
-- 		suggest = {
-- 			fromRuntimepath = true,
-- 			fromVimruntime = true,
-- 		},
-- 		vimruntime = '',
-- 	},
-- 	root_dir = function()
-- 		vim.fn.getcwd()
-- 	end,
-- 	-- root_dir = function(fname)
-- 	--       return util.find_git_ancestor(fname)
-- 	--     end,
-- })
-- }}}

-- vim: set foldmethod=marker :
