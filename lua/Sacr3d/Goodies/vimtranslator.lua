--[[=================================================]]--
--[[                 VIM-TRANSLATOR                  ]]--
--[[=================================================]]--
local g = vim.g

--=>> Settings <<=--
--------------------
g.translator_target_lang = 'en'
g.translator_source_lang = 'auto'
g.translator_window_type = 'popup' -- Available: 'popup', 'preview'
g.translator_window_max_width = 0.9
g.translator_window_max_height = 0.9
g.translator_window_borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' }
-- g.translator_default_engines = { 'google' }
g.translator_history_enable = false
-- g.translator_proxy_url = '' -- (Example: 'socks5://127.0.0.1:1080')

--=>> Keybinds <<=--
--------------------
local bind = require("Utils.binds")
--> Display translation in a window
bind('n', '<Leader>hm', ':TranslateW --target_lang=ms<cr>', 'noremap', 'silent')
bind('v', '<Leader>hm', ':TranslateW --target_lang=ms<cr>', 'noremap', 'silent')
bind('n', '<Leader>hh', ':TranslateW --target_lang=en<cr>', 'noremap', 'silent')
bind('v', '<Leader>hh', ':TranslateW --target_lang=en<cr>', 'noremap', 'silent')
--> Replace the text with translation
bind('n', '<Leader>hrr', ':TranslateR --target_lang=en<cr>', 'noremap', 'silent')
bind('v', '<Leader>hrr', ':TranslateR --target_lang=en<cr>', 'noremap', 'silent')
bind('n', '<Leader>hrm', ':TranslateR --target_lang=ms<cr>', 'noremap', 'silent')
bind('v', '<Leader>hrm', ':TranslateR --target_lang=ms<cr>', 'noremap', 'silent')
--> Echo translation in the cmdline
bind('n', '<Leader>hc', ':Translate<cr>', 'noremap', 'silent')
bind('v', '<Leader>hc', ':Translate<cr>', 'noremap', 'silent')
--> Translate the text in clipboard
bind('n', '<Leader>hxx', ':TranslateX<cr>', 'noremap', 'silent')
bind('n', '<Leader>hxm', ':TranslateX<cr>', 'noremap', 'silent')

