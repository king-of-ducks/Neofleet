require('lualine').setup({
  options = {
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      {
        'mode', 
        fmt = function(str)
          if str == 'NORMAL' then
            return ' normal' 
          elseif str == 'INSERT' then
            return ' insert'
          elseif str == 'VISUAL' then
            return ' visual'
          elseif str == 'V-LINE' then
            return ' v-line'
          elseif str == 'V-BLOCK' then
            return ' v-block'
          elseif str == 'COMMAND' then
            return ' command'
          elseif str == 'REPLACE' then
            return ' replace'
          elseif str == 'SELECT' then
            return ' select'
          elseif str == 'S-LINE' then
            return ' s-line'
          elseif str == 'S-BLOCK' then
            return ' s-block'
          elseif str == 'O-PENDING' then
            return ' o-pending'
          elseif str == 'TERMINAL' then
            return ' terminal'
          else
            return str
          end
        end,
        separator = { left = '', right = '' }, right_padding = 2, left_padding = 2
      } 
    },
    lualine_b = { 'filename', 'lsp' },
    lualine_c = {
      {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        sections = { 'error', 'warn' },
        symbols = { error = ' ', warn = ' ' },
        colored = true,
        update_in_insert = false,
      }
    },
    lualine_x = {},
    lualine_y = { 'filetype' },
    lualine_z = {
      {
        function()
          return os.date(" %H:%M:%S")
        end,
        separator = { right = '', left = '' }, right_padding = 1, left_padding = 1
      }
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
})
