local wk = require("which-key")
wk.setup({
  -- preset = "helix"
})

wk.add({
  {
    mode = { "n", "v" },
    { "<Leader>l", "<cmd> Lazy<cr>", desc = "Lazy", icon = "󰒲" },
    { "<Leader>m", "<cmd> Mason<cr>", desc = "Mason", icon = "󱍾" },
    { "<Leader>ff", "<cmd> lua Snacks.picker.files()<cr>", desc = "Find Files", icon = "󰱽" },
    { "<Leader>fg", "<cmd> lua Snacks.picker.grep()<cr>", desc = "Find Text", icon = "󱩾" },
    { "<Leader>fb", "<cmd> lua Snacks.picker()<cr>", desc = "Builtin", icon = "" },
    { "<Leader>t", "<cmd> lua Snacks.picker.colorschemes()<cr>", desc = "Select Theme", icon = "󰏘" },
    { "<Leader>nn", "<cmd> Neotree toggle left<cr>", desc = "Left Neotree", icon = "" },
    { "<Leader>nf", "<cmd> Neotree toggle float<cr>", desc = "Float Neotree", icon = "" },
    { "<Leader>g", "<cmd> lua Snacks.lazygit()<cr>", desc = "Lazygit", icon = "" },
    { "<Leader>c", "<cmd> lua Snacks.terminal()<cr>", desc = "Terminal", icon = "" },
  }
})

