local cmd = vim.cmd
local g = vim.g

--=>> HIGHLIGHT <<=--
---------------------
cmd("hi vimwikibold      gui=bold guifg=#FFFFFF guibg=none guisp=none")
cmd("hi VimwikiHeader1   guifg=#a957ec")
cmd("hi VimwikiHeader2   guifg=#a6e22e")
cmd("hi VimwikiHeader3   guifg=#ff5c57")
cmd("hi VimwikiHeader4   guifg=#F01f6f")
cmd("hi VimwikiHeader5   guifg=#268bd2")
cmd("hi VimwikiHeader6   guifg=#81eeb2")
-- cmd('hi markdownH1       gui=bold guifg=#a957ec')
-- cmd('hi markdownH2       gui=bold guifg=#a6e22e')
-- cmd('hi markdownH3       gui=bold guifg=#ff5c57')
-- cmd('hi markdownH4       gui=bold guifg=#F01f6f')
-- cmd('hi markdownH5       gui=bold guifg=#268bd2')
-- cmd('hi markdownH6       gui=bold guifg=#81eeb2')

g.vimwiki_hl_headers = 1

-- Append wiki file extension to links in Markdown.
-- This is needed for compatibility with other Markdown tools.
g.vimwiki_markdown_link_ext = 1

-- g.vimwiki_global_ext = 1

cmd[[let g:vimwiki_ext2syntax = {'.md': 'markdown'}]]
-- cmd([[let g:vimwiki_ext2syntax = {}]])
-- g.vimwiki_ext2syntax = {}

-- Conceals one-character markers, shortens long
-- URLs and hides markers and URL for links. Default: 2
g.vimwiki_conceallevel = 3

-- Control the concealment of one-character markers.
-- Default: 1
-- g.vimwiki_conceal_onechar_markers = 1

-- Conceal preformatted text markers. Default: 0
g.vimwiki_conceal_pre = 1

-- cmd([[ let g:vimwiki_filetypes = [''] ]])
-- g.vimwiki_filetypes = {'markdown'}
-- g.vimwiki_filetypes = {
--   'markdown',
--   'pandoc'
-- }
g.automatic_nested_syntaxes = 1
g.nested_syntaxes = { python = 'python' }

g.vimwiki_list = {
	{
		path = "~/vimwiki",
		name = "Wackie",
		ext = ".md",
		syntax = "markdown",
	},
	{
		path = "~/SacredWiki",
		name = "Sacred",
		ext = ".md",
		syntax = "markdown",
	},
}

-->> OPEN FILES IN NVIM. (vfiles:)
-- Use Vim to open external files with the 'vfile:' scheme.  E.g.:
--   1) [[vfile:~/Code/PythonProject/abc123.py]]
--   2) [[vfile:./Wiki Home]]
cmd([[
  function! VimwikiLinkHandler(link)
  let link = a:link
  if link =~# '^vfile:'
    let link = link[1:]
  else
    return 0

    endif
    let link_infos = vimwiki#base#resolve_link(link)
    if link_infos.filename == ''
      echomsg 'Vimwiki Error: Unable to resolve link!'
      return 0
    else
      exe 'tabnew ' . fnameescape(link_infos.filename)
      return 1
      endif
      endfunction
        ]])


