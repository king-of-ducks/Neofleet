-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        { "catppuccin/nvim" },
        { "navarasu/onedark.nvim" },
        { "folke/tokyonight.nvim" },
        { "ellisonleao/gruvbox.nvim" },
        { "Mofiqul/vscode.nvim" },

        { "akinsho/toggleterm.nvim" },
        {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v3.x",
            dependencies = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons",
                "MunifTanjim/nui.nvim"
            },
            lazy = false
        },
        {
            "akinsho/bufferline.nvim",
            dependencies = {
                "nvim-tree/nvim-web-devicons"
            }
        },
        { "mason-org/mason.nvim" },
        { "nvim-telescope/telescope.nvim" },
        { "neovim/nvim-lspconfig" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "hrsh7th/nvim-cmp" },
        {
            'nvim-lualine/lualine.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons' }
        },
        {
            "rcarriga/nvim-notify",
            lazy = false
        },
        {
            "zaldih/themery.nvim",
            lazy = false,
        },
        { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },
        {
            'goolord/alpha-nvim',
            dependencies = {
                'echasnovski/mini.icons',
                'nvim-lua/plenary.nvim'
            }
        }
    },
    install = { colorscheme = { "catppuccin-mocha" } },
    checker = { enabled = true },
})
