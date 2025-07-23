local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

local dashboard = require("alpha.themes.dashboard")

-- Customize the header
dashboard.section.header.val = {
    [[                                                                       ]],
    [[                                                                     ]],
    [[       ████ ██████           █████      ██                     ]],
    [[      ███████████             █████                             ]],
    [[      █████████ ███████████████████ ███   ███████████   ]],
    [[     █████████  ███    █████████████ █████ ██████████████   ]],
    [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
    [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
    [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
    [[                                                                       ]],
}

dashboard.section.buttons.val = {
    dashboard.button("e", "󰝒 New file", ":ene <BAR> startinsert<CR>"),
    dashboard.button("f", "󰱽 Find file", ":Telescope find_files<CR>"),
    dashboard.button("g", "󱩾 Live Grep", ":Telescope live_grep<CR>"),
    dashboard.button("l", "󰒲 Lazy", ":Lazy<CR>"),
    dashboard.button("c", " Config", ":e $MYVIMRC<CR>"),
    dashboard.button("q", " Quit Neovim", ":qa!<CR>"),
}

alpha.setup(dashboard.config)
