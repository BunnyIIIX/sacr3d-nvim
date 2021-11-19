-- Copyright (c) 2021 Jnhtr
-- MIT license, see LICENSE for more details.
-- LuaFormatter off
local colors = {
	base_fg = '#000000',
	-- base_fg = '#272822',
	light_fg = '#F6F6F6',
	-- light_fg = '#D6D6D6',
	secondary = '#2c2d29',
	-- secondary = '#3c3d39',
	background = '#11120c',
	-- background = '#31322c',
	norm_bg = '#Ff056f',
	ins_bg = '#09F7A0',
	-- ins_bg = '#A6E33E',
	vis_bg = '#66D9EF',
	rep_bg = '#E06C75',
	cmd_bg = '#E6DB74',
	int_bg = '#181C24',
	-- int_bg = '#282C34',
}
-- #F43E5C
-- #F92672
-- #Ff056f
--LuaFormatter on
return {
	normal = {
		a = {
			bg = colors.norm_bg,
			fg = colors.base_fg,
			gui = 'bold',
		},
		b = {
			bg = colors.secondary,
			fg = colors.light_fg,
		},
		c = {
			bg = colors.background,
			fg = colors.light_fg,
		},
	},

	insert = {
		a = {
			bg = colors.ins_bg,
			fg = colors.base_fg,
			gui = 'bold',
		},
		b = {
			bg = colors.secondary,
			fg = colors.light_fg,
		},
		c = {
			bg = colors.background,
			fg = colors.light_fg,
		},
	},

	visual = {
		a = {
			bg = colors.vis_bg,
			fg = colors.base_fg,
			gui = 'bold',
		},
		b = {
			bg = colors.secondary,
			fg = colors.light_fg,
		},
		c = {
			bg = colors.background,
			fg = colors.light_fg,
		},
	},

	replace = {
		a = {
			bg = colors.rep_bg,
			fg = colors.base_fg,
			gui = 'bold',
		},
		b = {
			bg = colors.secondary,
			fg = colors.light_fg,
		},
		c = {
			bg = colors.background,
			fg = colors.light_fg,
		},
	},

	command = {
		a = {
			bg = colors.cmd_bg,
			fg = colors.base_fg,
			gui = 'bold',
		},
		b = {
			bg = colors.secondary,
			fg = colors.light_fg,
		},
		c = {
			bg = colors.background,
			fg = colors.light_fg,
		},
	},

	inactive = {
		a = {
			bg = colors.int_bg,
			fg = colors.white,
			gui = 'bold',
		},
		b = {
			bg = colors.secondary,
			fg = colors.light_fg,
		},
		c = {
			bg = colors.background,
			fg = colors.light_fg,
		},
	},
}
