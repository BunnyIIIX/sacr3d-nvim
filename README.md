# About

<div style="text-align: justify">
  sacr3d-nvim is a NeoVim plugin that provides multiple colorschemes based on
  the Challenger_deep colorschemes. This also based on Catppuccino color pallete and template.
  Apart from the eye-candy colorschemes, sacr3d-nvim also provides integrations with multiple
  plugins and tools you are probably already using (e.g. Treesitter, Native
  LSP, ...).
</div>

# 🌲 Table of Contents

-   [Flavors](#-flavors)
-   [Features](#-features)
-   [Notices](#-notices)
-   [Installation](#-installation)
    -   [Prerequisites](#prerequisites)
    -   [Adding the plugin](#adding-the-plugin)
    -   [Setup](#setup)
        -   [For init.lua](#for-initlua)
        -   [For init.vim](#for-initvim)
    -   [Updating](#updating)
-   [Usage](#usage)
    -   [Commands](#commands)
-   [Configuration](#-configuration)
    -   [General](#general)
    -   [List of Colorschemes](#list-of-colorschemes)
-   [Contribute](#-contribute)
    -   [Need Help](#need-help)
-   [Inspirations](#-inspirations)
-   [License](#-license)
-   [FAQ](#-faq)
-   [To-Do](#-to-do)

# 🍨 Flavors

## Dark sacr3d

<img src ="https://i.imgur.com/qdTDwaC.png">

## Neon Latte

<img src ="https://i.imgur.com/WlzSh2v.png">

## Light Melya

<img src ="https://i.imgur.com/r2XNdh5.png">

# 🎁 Features

-   Multiple colorschemes (AKA [flavors](#-flavors)) available!
-   Handy CLI.
-   Allows user remaps.
-   Extensible for many use cases.
-   Integrations with a lot of stuff:
    -   [Treesitter](https://github.com/tree-sitter/tree-sitter)
    -   [Native LSP](https://github.com/neovim/nvim-lspconfig)
    -   [Telescope](https://github.com/nvim-telescope/telescope.nvim)
    -   [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
    -   [Trouble](https://github.com/folke/trouble.nvim)
    -   [WhichKey](https://github.com/folke/which-key.nvim)
    -   [Git signs](https://github.com/lewis6991/gitsigns.nvim)
    -   [BarBar](https://github.com/romgrk/barbar.nvim)
    -   [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
    -   [Lualine](https://github.com/hoob3rt/lualine.nvim)
    -   [Git Gutter](https://github.com/airblade/vim-gitgutter)
    -   [Fern](https://github.com/lambdalisue/fern.vim)
    -   [Lightline](https://github.com/itchyny/lightline.vim)
    -   [Dashboard](https://github.com/glepnir/dashboard-nvim)
    -   [Markdown](https://www.markdownguide.org/)
    -   [Sneak](https://github.com/justinmk/vim-sneak)
    -   [Neogit](https://github.com/TimUntersberger/neogit)
    -   [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
    -   [Kitty](https://github.com/kovidgoyal/kitty)
    -   [Alacritty](https://github.com/alacritty/alacritty)

# 📺 Notices

Checkout the [CHANGELOG.md](https://github.com/bunnyiiix/sacr3d-nvim/blob/main/CHANGELOG.md) file for more information on the notices below:

<ul>
  <li><b>29-08-21</b>: Refactored diffs and git related stuff, added the `CPClear` command and added option to set terminal colors</li>
  <li><b>22-08-21</b>: Just released!</li>
</ul>

<details>
<summary>Old notices...</summary>
<p>
<ul>
</ul>
</p>
</details>

# 📦 Installation

## Prerequisites

-   [NeoVim 0.5+](https://github.com/neovim/neovim/releases/tag/v0.5.0)

## Adding the plugin

You can use your favorite plugin manager for this. Here are some examples with the most popular ones:

### Vim-plug

```lua
Plug 'bunnyiiix/sacr3d-nvim'
```

### Packer.nvim

```lua
use "bunnyiiix/sacr3d-nvim"
```

### Vundle

```lua
Plugin 'bunnyiiix/sacr3d-nvim'
```

### NeoBundle

```lua
NeoBundleFetch 'bunnyiiix/sacr3d-nvim
```

## Setup

There are already some sane defaults that you may like, however you can change them to match your taste. These are the defaults:

```lua
colorscheme = "dark_sacr3d",
transparency = false,
term_colors = false,
styles = {
	comments = "italic",
	functions = "italic",
	keywords = "italic",
	strings = "NONE",
	variables = "NONE",
},
integrations = {
	treesitter = true,
	native_lsp = {
		enabled = true,
		styles = {
			errors = "italic",
			hints = "italic",
			warnings = "italic",
			information = "italic"
		}
	},
	lsp_trouble = false,
	lsp_saga = false,
	gitgutter = false,
	gitsigns = false,
	telescope = false,
	nvimtree = {
		enabled = false,
		show_root = false,
	},
	which_key = false,
	indent_blankline = false,
	dashboard = false,
	neogit = false,
	vim_sneak = false,
	fern = false,
	barbar = false,
	bufferline = false,
	markdown = false,
}
```

The way you setup the settings on your configuration varies on whether you are using vimL for this or Lua.

<details>
    <summary>For init.lua</summary>
<p>

```lua
local sacr3d = require("sacr3d")

-- configure it
sacr3d.setup(
    {
		colorscheme = "dark_sacr3d",
		transparency = false,
		term_colors = false,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				styles = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic"
				}
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = false,
			nvimtree = {
				enabled = false,
				show_root = false,
			},
			which_key = false,
			indent_blankline = false,
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = false,
			markdown = false,
		}
	}
)
```

<br />
</details>

<details>
    <summary>For init.vim</summary>
<p>

```lua
lua << EOF
local sacr3d = require("sacr3d")

-- configure it
sacr3d.setup(
    {
		colorscheme = "dark_sacr3d",
		transparency = false,
		term_colors = false,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				styles = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic"
				}
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = false,
			nvimtree = {
				enabled = false,
				show_root = false,
			},
			which_key = false,
			indent_blankline = false,
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = false,
			markdown = false,
		}
	}
)
EOF
```

<br />
</details>

After setting things up, you can load sacr3d like so:

For Lua:

```lua
sacr3d.load(<colorscheme_name>)
```

If `<colorscheme_name>` is not passed then it'll pick the one in the config.

For VimScript:

```lua
colorscheme sacr3d
```

Passing `sacr3d` to the `colorscheme` command will pick the colorscheme in the config. Optionally, you could pass one by its code name (e.g. `colorscheme neon_latte`).

For instructions on how to configure the plugin, check out the [configuration](#configuration) section.

## Updating

This depends on your plugin manager. If, for example, you are using Packer.nvim, you can update it with this command:

```lua
:PackerUpdate
```

# 🤖 Usage

## Commands

The provides commands that follows the _camel casing_ naming convention and have the `CP` prefix so that it's easy to remember that they are part of sacr3d-nvim:

-   `:CPClear` clear all highlight groups.
-   `:colorscheme <colorscheme_name>` load a colorscheme, not necessarily a sacr3d one. (Note: this is a built-in NVim command).

# 🐬 Configuration

Although settings already have self-explanatory names, here is where you can find info about each one of them and their classifications!

## General

This settings are unrelated to any group and are independent.

-   `colorscheme`: (String) code name of the color-scheme to be used. All of them can be found in the section below.
-   `transparency`: (Boolean) if true, disables setting the background color.
-   `term_colors`: (Boolean) if true, sets terminal colors (e.g. `g:terminal_color_0`).

## Styles

Handles the style of general hi groups (see `:h highlight-args`):

-   `comments`: (String) changed the style of the comments.
-   `functions`: (String) changed the style of the functions.
-   `keywords`: (String) changed the style of the keywords.
-   `strings`: (String) changed the style of the strings.
-   `variables`: (String) changed the style of the variables.

## Integrations

These integrations allow sacr3d to set the theme of various plugins/stuff. To enable an integration you just need to set it to `true`, however, there are some special integrations...

If you'd like to know which highlight groups are being affected by sacr3d, checkout this directory: [`lua/sacr3d/core/integrations/`](https://github.com/bunnyiiix/sacr3d-nvim/tree/main/lua/sacr3d/core/integrations).

### Special Integrations

-   **Native Nvim LSP:** setting `enabled` to `true` enables this integration. In the inner table (`styles`) you can set that the style for virtual diagnostics.
-   **Lualine:** use this to set it up (Note: `sacr3d` is the only valid theme name. It will pick the one set in your config):

```lua
require('lualine').setup {
  options = {
    theme = "sacr3d"
	-- ... the rest of your lualine config
  }
}
```

-   **Lightline:** use this to set it up (Note: `sacr3d` is the only valid colorscheme name. It will pick the one set in your config):

```lua
let g:lightline = {'colorscheme': 'sacr3d'}
```

-   **Kitty:** Copy and paste the file corresponding to theme you want to use from [this directory](https://github.com/bunnyiiix/sacr3d-nvim/tree/main/extra/kitty) on your Kitty config.
-   **Alacritty:** Copy and paste the file corresponding to theme you want to use from [this directory](https://github.com/bunnyiiix/sacr3d-nvim/tree/main/extra/alacritty) on your Alacritty config.
-   **NvimTree:** setting `enabled` to `true` enables this integration:

```lua
integration = {
  nvimtree = {
    enabled = true,
    show_root = true, -- makes the root folder not transparent
  }
}
```

## List of colorschemes

| Colorschemes     | Code Names         |
| ---------------- | ------------------ |
| Dark sacr3d      | `dark_sacr3d`      |
| Neon Latte       | `neon_latte`       |
| Light Melya      | `light_melya`      |

## Overriding colors

To override the colors for the sacr3d theme you are using you'll pass the parameters to the `setup()` function you already used for configuring the plugin. This is the structure:

```lua
local sacr3d = require("sacr3d")
sacr3d.setup({<your_settings>}, {your_color_overrides})
```

Example: setting the colorscheme to `Neon Latte` and changing the color `red` to `#ffffff` (white).

```lua
local sacr3d = require("sacr3d")
sacr3d.setup({
  colorscheme = "neon_latte",
}, {
  red = "#ffffff",
})
```

All editable fields are the same as the ones mentioned in any of the colorschemes found at: [`lua/sacr3d/color_schemes`](https://github.com/bunnyiiix/sacr3d-nvim/tree/main/lua/sacr3d/color_schemes). You could also use one as a template, if you will.

<br />
</details>

## Hooks

Use them to execute code at certain events [described by their names]. These are the ones available:

| Function           | Description                  |
| ------------------ | ---------------------------- |
| `before_loading()` | Before loading a colorscheme |
| `after_loading()`  | After loading a colorscheme  |

They can be used like so:

```lua
local sacr3d = require("sacr3d")

sacr3d.before_loading = function ()
	print("I ran before setting a colorscheme!")
end
```

# 🙋 FAQ

-   Q: **_"How can I view the doc from NeoVim?"_**
    A: Use `:help sacr3d-nvim`

-   Q: **_"Why are the colorschemes named like that? Do they follow any convention(s)?"_**
    A: A colorscheme's name is constructed by two words: the first one is a word that represents the tonalities in the colors used and the second one is the name of a coffee drink from [this list](https://en.wikipedia.org/wiki/List_of_coffee_drinks).

# 👐 Contribute

Pull Requests are welcomed as long as they are properly justified and there are no conflicts. If your PR has something to do with the README or in general related with the documentation, I'll gladly merge it! Also, when writing code for the project **you must** use the [.editorconfig](https://github.com/bunnyiiix/sacr3d-nvim/blob/main/.editorconfig) file on your editor so as to "maintain consistent coding styles". For instructions on how to use this file refer to [EditorConfig's website](https://editorconfig.org/).

# 💭 Inspirations

The following projects inspired the creation of sacr3d-nvim. If possible, go check them out to see why they are so amazing :]

-   [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim): A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins. Includes additional themes for Kitty, Alacritty, iTerm and Fish.
-   [norcalli/nvim-base16.lua](https://github.com/norcalli/nvim-base16.lua): Programmatic lua library for setting base16 themes in Neovim.

# 📜 License

sacr3d-nvim is released under the GPL v3.0 license. It grants open-source permissions for users including:

-   The right to download and run the software freely
-   The right to make changes to the software as desired
-   The right to redistribute copies of the software
-   The right to modify and distribute copies of new versions of the software

For more convoluted language, see the [LICENSE file](https://github.com/bunnyiiix/sacr3d-nvim/blob/main/LICENSE.md).

# 📋 TO-DO

**High Priority**

-   Add Aquamarine Frappé

**Low Priority**

-   Finish DOC
-   Add more integrations

<hr>
<p align="center">
	Enjoy!
</p>
