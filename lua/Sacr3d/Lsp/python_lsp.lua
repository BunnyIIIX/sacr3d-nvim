require'lspconfig'.pylsp.setup{
	cmd = { "pylsp" },
	filetypes = { "python" },
}

	-- root_dir = function()
		-- vim.fn.getcwd()
	-- end,

	-- root_dir = function(fname)
	-- 	local root_files = {
	-- 		'pyproject.toml',
	-- 		'setup.py',
	-- 		'setup.cfg',
	-- 		'requirements.txt',
	-- 		'Pipfile',
	-- 	}
	-- 	return util.path.dirname(fname)
	-- 	return vim.lsp.util.root_pattern(unpack(root_files))(fname)
	-- 	return util.find_git_ancestor(fname)
	-- end,

