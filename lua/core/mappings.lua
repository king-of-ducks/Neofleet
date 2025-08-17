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
