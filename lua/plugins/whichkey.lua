local wk = require("which-key")
wk.setup({
  preset = "helix"
})

wk.add({
  {
    mode = { "n", "v" },
    { "<Leader>l", "<cmd> Lazy<cr>", desc = "Lazy", icon = "󰒲" },
    { "<Leader>m", "<cmd> Mason<cr>", desc = "Mason", icon = "󱍾" },
    { "<Leader>ff", "<cmd> Telescope find_files<cr>", desc = "Find Files", icon = "󰱽" },
    { "<Leader>fg", "<cmd> Telescope live_grep<cr>", desc = "Find Text", icon = "󱩾" },
    { "<Leader>fb", "<cmd> Telescope builtin<cr>", desc = "Builtin", icon = "" },
    { "<Leader>t", "<cmd> Themify<cr>", desc = "Select Theme", icon = "󰏘" },
    { "<Leader>nn", "<cmd> Neotree toggle left<cr>", desc = "Left Neotree", icon = "" },
    { "<Leader>nf", "<cmd> Neotree toggle float<cr>", desc = "Float Neotree", icon = "" },
    { "<Leader>g", "<cmd> lua require('snacks.lazygit').open()<cr>", desc = "Lazygit", icon = "" },
    { "<Leader>c", "<cmd> lua require('snacks.terminal').open()<cr>", desc = "Terminal", icon = "" },
  }
})

