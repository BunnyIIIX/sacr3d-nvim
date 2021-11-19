require('nvim-comment-frame').setup({

  -- if true, <leader>cf keymap will be disabled
  disable_default_keymap = false,

  -- adds custom keymap
  keymap = '<leader>cc',
  multiline_keymap = '<leader>cm',

  -- start the comment with this string
  start_str = '//',

  -- end the comment line with this string
  end_str = '//',

  -- fill the comment frame border with this character
  fill_char = '=',

  -- width of the comment frame
  frame_width = 57,

  -- wrap the line after 'n' characters
  line_wrap_len = 40,

  -- automatically indent the comment frame based on the line
  auto_indent = true,

  -- add comment above the current line
  add_comment_above = true,

  -- configurations for individual language goes here
  languages = {
    -- configuration for Lua programming language
    -- @NOTE global configuration will be overridden by language level
    -- configuration if provided
    lua = {
      -- start the comment with this string
      start_str = '--[[',

      -- end the comment line with this string
      end_str = ']]--',

      -- fill the comment frame border with this character
      fill_char = '=',

      -- width of the comment frame
      frame_width = 57,

      -- wrap the line after 'n' characters
      line_wrap_len = 40,

      -- automatically indent the comment frame based on the line
      auto_indent = false,

      -- add comment above the current line
      add_comment_above = false,
    },
    bash = {
      -- start the comment with this string
      start_str = '#[[',

      -- end the comment line with this string
      end_str = ']]#',

      -- fill the comment frame border with this character
      fill_char = '=',

      -- width of the comment frame
      frame_width = 57,

      -- wrap the line after 'n' characters
      line_wrap_len = 40,

      -- automatically indent the comment frame based on the line
      auto_indent = false,

      -- add comment above the current line
      add_comment_above = false,
    },
    zsh = {
      -- start the comment with this string
      start_str = '#[[',

      -- end the comment line with this string
      end_str = ']]#',

      -- fill the comment frame border with this character
      fill_char = '=',

      -- width of the comment frame
      frame_width = 57,

      -- wrap the line after 'n' characters
      line_wrap_len = 40,

      -- automatically indent the comment frame based on the line
      auto_indent = false,

      -- add comment above the current line
      add_comment_above = true,
    },
    md = {
      -- start the comment with this string
      start_str = '#==',

      -- end the comment line with this string
      end_str = '==#',

      -- fill the comment frame border with this character
      fill_char = '=',

      -- width of the comment frame
      frame_width = 58,

      -- wrap the line after 'n' characters
      line_wrap_len = 40,

      -- automatically indent the comment frame based on the line
      auto_indent = false,

      -- add comment above the current line
      add_comment_above = true,
    },
    vimwiki = {
      -- start the comment with this string
      start_str = '#==',

      -- end the comment line with this string
      end_str = '==#',

      -- fill the comment frame border with this character
      fill_char = '=',

      -- width of the comment frame
      frame_width = 58,

      -- wrap the line after 'n' characters
      line_wrap_len = 40,

      -- automatically indent the comment frame based on the line
      auto_indent = false,

      -- add comment above the current line
      add_comment_above = true,
    },
  }
})

