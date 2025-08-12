local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map('n', ';', ':')
map('n', '<C-q>', '<cmd> q!<CR>', { silent = true })
map({'n', 'i', 'v'}, '<C-s>', '<cmd> w!<CR>')

map('n', '<M-l>', '<cmd> bnext<CR>', { silent = true })
map('n', '<M-h>', '<cmd> bprevious<CR>', { silent = true })
map('n', '<M-RIGHT>', '<cmd> bnext<CR>', { silent = true })
map('n', '<M-LEFT>', '<cmd> bprevious<CR>', { silent = true })

-- map({'n', 'v'}, '<Leader>l', '<cmd> Lazy<CR>', { silent = true, desc = "Lazy" })
-- map({'n', 'v'}, '<Leader>m', '<cmd> Mason<CR>', { silent = true, desc = "Mason" })
-- map({'n', 'v'}, '<Leader>ff', '<cmd> Telescope find_files<CR>', { silent = true, desc = "Find Files" })
-- map({'n', 'v'}, '<Leader>fg', '<cmd> Telescope live_grep<CR>', { silent = true, desc = "Find Text" })
-- map({'n', 'v'}, '<Leader>fb', '<cmd> Telescope builtin<CR>', { silent = true, desc = "Builtin" })
-- map({'n', 'v'}, '<Leader>t', '<cmd> Themify<CR>', { silent = true, desc = "Themify" })
-- map({'n', 'v'}, '<Leader>nn', '<cmd> Neotree toggle left<CR>', { silent = true, desc = "Floating Neotree" })
-- map({'n', 'v'}, '<Leader>nf', '<cmd> Neotree toggle float<CR>', { silent = true, desc = "Left Neotree" })
-- map({'n', 'v'}, '<Leader>g', "<cmd> lua require('snacks.lazygit').open()<CR>", { silent = true, desc = "Lazygit" })
-- map({'n', 'v'}, '<Leader>c', "<cmd> lua require('snacks.terminal').open()<CR>", { silent = true, desc = "Terminal" })
