local sacr3d = require("sacr3d")

-- require('themes/sacr3d/sacr3d.nvim/lua/sacr3d/color_schemes/neon_sacr3d')
-- configure it
sacr3d.setup(
{
  -- colorscheme = "neon_sacr3d",
  colorscheme = "dark_sacr3d",
  transparency = false,
  styles = {
    comments = "bold",
    functions = "bold",
    keywords = "bold",
    strings = "bold",
    variables = "italic", "bold"
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
    gitsigns = true,
    telescope = true,
    nvimtree = false,
    which_key = false,
    indent_blankline = false,
    dashboard = false,
    neogit = false,
    vim_sneak = false,
    fern = false,
    barbar = false,
    bufferline = false,
    markdown = true,
  }
}
)

-- load it
sacr3d.load()

