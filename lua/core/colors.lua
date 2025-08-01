vim.opt.termguicolors = true

require('onedark').setup({
  -- style = 'dark'
  -- style = 'darker'
  -- style = 'cool'
  style = 'deep'
  -- style = 'warm'
  -- style = 'warmer'
})

require('catppuccin').setup({
  no_italic = true
})

require('gruvbox').setup({
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  }
})

require("tokyonight").setup({
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = { italic = false },
    variables = { italic = false },
    sidebars = "dark",
    floats = "dark"
  },
  on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
  end,
})

function setColor(color)
  color = color or "habamax"
  vim.cmd.colorscheme(color)
end

setColor('tokyonight-moon')
