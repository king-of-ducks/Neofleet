require('lualine').setup({
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
        end
      }
    },
    -- lualine_x = {},
    lualine_y = {},
    -- lualine_z = {},
  },
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
})
