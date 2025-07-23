vim.opt.termguicolors = true

require('onedark').setup({
    -- style = 'dark'
    style = 'darker'
    -- style = 'cool'
    -- style = 'deep'
    -- style = 'warm'
    -- style = 'warmer'
})

function setColor(color)
    color = color or "habamax"
    vim.cmd.colorscheme(color)
end

setColor('catppuccin-mocha')
