local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map('n', ';', ':')
map('n', '<C-q>', ':q!<CR>', { silent = true })
map('n', '<C-s>', ':w!<CR>')

map('n', '<M-l>', ':bnext<CR>', { silent = true })
map('n', '<M-h>', ':bprevious<CR>', { silent = true })
map('n', '<M-RIGHT>', ':bnext<CR>', { silent = true })
map('n', '<M-LEFT>', ':bprevious<CR>', { silent = true })

map('n', '<C-n>', ':Neotree left toggle<CR>', { silent = true })
map('n', '<C-t>', ':ToggleTerm direction=horizontal<CR>', { silent = true })

map('n', '<Leader>l', ':Lazy<CR>', { silent = true })
map('n', '<Leader>m', ':Mason<CR>', { silent = true })
map('n', '<Leader>f', ':Telescope<CR>', { silent = true })
map('n', '<Leader>t', ':Themery<CR>', { silent = true })
