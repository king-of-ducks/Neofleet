local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map('n', ';', ':')
map('n', '<C-q>', '<cmd> q!<CR>', { silent = true })
map({'n', 'i', 'v'}, '<C-s>', '<cmd> w!<CR>')

map('n', '<M-l>', ':bnext<CR>', { silent = true })
map('n', '<M-h>', ':bprevious<CR>', { silent = true })
map('n', '<M-RIGHT>', ':bnext<CR>', { silent = true })
map('n', '<M-LEFT>', ':bprevious<CR>', { silent = true })

map('n', '<C-n>', ':Neotree left toggle<CR>', { silent = true })
map('n', '<C-n>', ':Neotree left toggle<CR>', { silent = true })
map('n', '<C-t>', ':ToggleTerm direction=horizontal<CR>', { silent = true })

map('n', '<Leader>l', ':Lazy<CR>', { silent = true })
map('n', '<Leader>m', ':Mason<CR>', { silent = true })
map('n', '<Leader>ff', ':Telescope find_files<CR>', { silent = true })
map('n', '<Leader>fg', ':Telescope live_grep<CR>', { silent = true })
map('n', '<Leader>fb', ':Telescope builtin<CR>', { silent = true })
map('n', '<Leader>t', ':Themery<CR>', { silent = true })
