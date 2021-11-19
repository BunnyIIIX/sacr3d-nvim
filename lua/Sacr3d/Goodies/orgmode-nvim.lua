--[[=================================================]]--
--[[                  ORGMODE-NVIM                   ]]--
--[[=================================================]]--
--=>> Setup <<=--
require('orgmode').setup({
  org_agenda_files = {'~/Neorg-Sacr3d/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/Neorg-Sacr3d/org/refile.org',
})

--=>> Keybinds <<=--
-- Open agenda prompt: <Leader>oa
-- Open capture prompt: <Leader>oc
-- In any orgmode buffer press ? for help
