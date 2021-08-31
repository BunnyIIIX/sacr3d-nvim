" GPL-3.0 License

" prevent the plugin's interface from loading twice
if exists('g:loaded_sacr3d') | finish | endif

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" Interface {{{
command! -nargs=0 CPClear call v:lua.require'sacr3d.main'.main('clear')
" }}}

let &cpo = s:save_cpo " restore after
unlet s:save_cpo

" set to true the var that controls the plugin's loading
let g:loaded_sacr3d = 1
