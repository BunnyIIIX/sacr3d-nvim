require'lspconfig'.pyright.setup{
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "workspace",
				useLibraryCodeForTypes = true
			}
		}
	}
}

		-- root_dir = function(fname)
    --       local root_files = {
    --         'pyproject.toml',
    --         'setup.py',
    --         'setup.cfg',
    --         'requirements.txt',
    --         'Pipfile',
    --         'pyrightconfig.json',
    --       }
    --       return vim.lsp.util.root_pattern(unpack(root_files))(fname)
    -- 					-- return util.find_git_ancestor(fname)
    -- 					-- return util.path.dirname(fname)
    --     end,
