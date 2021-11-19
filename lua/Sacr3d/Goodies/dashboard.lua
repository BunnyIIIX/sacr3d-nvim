local g = vim.g

g.dashboard_default_executive = 'telescope'
g.dashboard_disable_statusline = 1

g.dashboard_custom_header = {
	' 											 SACR3D-NVIM 						  					',
	'┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑',
	'│..:s+oy..mmmmdmmmNNmNd::yNm/-syy:.ymmymmNdsmNmNmmmmhys+:.│',
	'│  --`:/sssoo+++ssyshdh:`/ydddmhy..odmoysyo+++oooo+:..-.  │',
	'│`  ``:://+/-`````-::s+/-.sdmmmy+.:/s+--.`.``.//////-.```.│',
	'│`   ``.-/:+: .+sys+/-:++.-smmd/`/o+-:/syod.  /:://..` ``.│',
	'│   `  .:+/:-..`-oyo/.-:-`-dmmmo`.::.-+oso.`..:/s+:``.`   │',
	'│-```  `..--.oyso++++/:+//odmmmso:+/:+o++osys+oso:- `..:-.│',
	'│.`     `.--:yhhdhyhyysoooyoNNdoyo+osyhyyhhhyyo++-.    .-:│',
	'│    `  ` `.-oyyyhsymmdh-osommyoo++ddmdsyyyyss/-`    `    │',
	'│`    `````` `-+yysyhmmd:+yyNNhyo+ymmdhyoys+:-` `````   ``│',
	'│.-//:-..`      :ossshmmy/yydmyys+mmdoyooy/`     `-.---:/+│',
	'│.-::/oso+/-.```..:/:oydy:::///:/+hds////:.```.:/+oso++o+/│',
	'│  ``..--::/:---.` -:+++:.``   ``-:+o:/-``.::://oo+/:..`` │',
	'│      `````..--:.  :/+ooo/.``.:/soo//- ./+oo+-``.``      │',
	'┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙',
}

g.dashboard_custom_section = {
	a = {
		description = {
			'						   Find File                        ',
		},
		command = 'Telescope find_files',
	},

	b = {
		description = {
			'						   Recents                          ',
		},
		command = 'Telescope oldfiles',
	},

	c = {
		description = {
			'						   Find Word                        ',
		},
		command = 'Telescope live_grep',
	},

	d = {
		description = {
			'						   New File                         ',
		},
		command = 'DashboardNewFile',
	},

	e = {
		description = {
			'						   Bookmarks                        ',
		},
		command = 'Telescope marks',
	},

	f = {
		description = {
			'						   Open Help Doc                    ',
		},
		command = 'view ~/.config/nvim/doc/helpdoc.md',
	},
}
--> Icons
-- ﱐ

g.dashboard_custom_footer = {
	'	',
	'▷ Sacr3d-nvim v0.0.1 Alpha ◁',
}

--{{{ =>> Example
-- g.dashboard_custom_header = {
-- 	'┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑',
-- 	'│ ⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷ │',
-- 	'│ ⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇ │',
-- 	'│ ⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽ │',
-- 	'│ ⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕ │',
-- 	'│ ⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕ │',
-- 	'│ ⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕ │',
-- 	'│ ⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄ │',
-- 	'│ ⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕ │',
-- 	'│ ⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿ │',
-- 	'│ ⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ │',
-- 	'│ ⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟ │',
-- 	'│ ⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠ │',
-- 	'│ ⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙ │',
-- 	'│ ⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣ │',
-- 	'┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙',
-- }

-- g.dashboard_custom_header = {
-- 	'..:s+oy..mmmmdmmmNNmNd::yNm/-syy:.ymmymmNdsmNmNmmmmhys+:..',
-- 	'  --`:/sssoo+++ssyshdh:`/ydddmhy..odmoysyo+++oooo+:..-.   ',
-- 	'`  ``:://+/-`````-::s+/-.sdmmmy+.:/s+--.`.``.//////-.```..',
-- 	'`   ``.-/:+: .+sys+/-:++.-smmd/`/o+-:/syod.  /:://..` ``.-',
-- 	'   `  .:+/:-..`-oyo/.-:-`-dmmmo`.::.-+oso.`..:/s+:``.`    ',
-- 	'-```  `..--.oyso++++/:+//odmmmso:+/:+o++osys+oso:- `..:-.`',
-- 	'.`     `.--:yhhdhyhyysoooyoNNdoyo+osyhyyhhhyyo++-.    .-:/',
-- 	'    `  ` `.-oyyyhsymmdh-osommyoo++ddmdsyyyyss/-`    `     ',
-- 	'`    `````` `-+yysyhmmd:+yyNNhyo+ymmdhyoys+:-` `````   ``.',
-- 	'.-//:-..`      :ossshmmy/yydmyys+mmdoyooy/`     `-.---:/+o',
-- 	'.-::/oso+/-.```..:/:oydy:::///:/+hds////:.```.:/+oso++o+/:',
-- 	'  ``..--::/:---.` -:+++:.``   ``-:+o:/-``.::://oo+/:..``  ',
-- 	'      `````..--:.  :/+ooo/.``.:/soo//- ./+oo+-``.``       ',
-- 	'           ````..`  :://s+o+.oooo:/:-`-/+: ``             ',
-- 	'            ..-.`    `  ` .` ..``  `   ``.-.`             ',
-- 	'             .-...--`               ```-..-.              ',
-- 	'               ``-hs-  `` `` `` ` ` `.os:``               ',
-- }

--}}}

-- vim: set foldmethod=marker :
