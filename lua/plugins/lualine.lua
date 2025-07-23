require('lualine').setup {
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
                    elseif str == 'O-PENDING' then
                        return ' o-pending'
                    else
                        return str
                    end
                end
            }
        }
    }
}
