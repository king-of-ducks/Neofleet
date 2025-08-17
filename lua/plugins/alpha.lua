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
  dashboard.button("e", "󰝒 New file", "<cmd> silent! ene<CR>"),
  dashboard.button("f", "󰱽 Find file", "<cmd> silent! lua Snacks.picker.files()<CR>"),
  dashboard.button("g", "󱩾 Live Grep", "<cmd> silent! lua Snacks.picker.grep()<CR>"),
  dashboard.button("l", "󰒲 Lazy", "<cmd> silent! Lazy<CR>"),
  dashboard.button("c", " Config", "<cmd> silent! lua Snacks.picker.files({ cwd = vim.fn.stdpath('config') })<CR>"),
  dashboard.button("q", " Quit Neovim", "<cmd> silent! qa!<CR>"),
}

alpha.setup(dashboard.config)
