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
    { "oahlen/iceberg.nvim" },

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
    {
      "williamboman/mason.nvim",
      lazy = true,
      opts = {
        automatic_installation = true,
        ensure_installed = {
          lsp = {
            "clangd",
            "pyright",
            "lua-language-server"
          }
        }
      },
      config = function()
        require('mason').setup()
      end,
    },
    { "nvim-telescope/telescope.nvim" },
    {
      'neovim/nvim-lspconfig',
      dependencies = { 'saghen/blink.cmp' },
      opts = {
        servers = {
          lua_ls = {}
        }
      },
      config = function(_, opts)
        local lspconfig = require('lspconfig')
        for server, config in pairs(opts.servers) do
          config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
          lspconfig[server].setup(config)
        end
      end
    },
    { "brenoprata10/nvim-highlight-colors" },
    {
      'saghen/blink.cmp',
      dependencies = { 'rafamadriz/friendly-snippets' },
      version = '1.*',
      opts = {
        keymap = {
          ["<CR>"] = { "accept", "fallback" },
          ["<Tab>"] = {
            "select_next",
            "snippet_forward",
            "fallback",
          },
          ["<C-e>"] = { "hide" },
        },  
        appearance = {
          nerd_font_variant = 'mono',
          use_nvim_cmp_as_default = true,
        },
        completion = {
          menu = {
            winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
            border = 'rounded',
            draw = {
              columns = { { "kind_icon" }, { "label", "label_description", gap = 1 } },
              components = {
                kind_icon = {
                  text = function(ctx)
                    local kind_icons = {
                      Text = "󰉿",
                      Method = "m",
                      Function = "󰊕",
                      Constructor = "",
                      Field = "",
                      Variable = "󰆧",
                      Class = "󰌗",
                      Interface = "",
                      Module = "",
                      Property = "",
                      Unit = "",
                      Value = "󰎠",
                      Enum = "",
                      Keyword = "󰌋",
                      Snippet = "",
                      Color = "󰏘",
                      File = "󰈙",
                      Reference = "",
                      Folder = "󰉋",
                      EnumMember = "",
                      Constant = "󰇽",
                      Struct = "",
                      Event = "",
                      Operator = "󰆕",
                      TypeParameter = "󰊄",
                    }
                    return kind_icons[ctx.kind] .. ctx.icon_gap
                  end,
                },
              },
            },
          },
          documentation = {
            window = {
              border = "rounded",
            },
            auto_show = true,
            auto_show_delay_ms = 50,
          },
        },
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" }
      },
      opts_extend = { "sources.default" }
    },
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
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      ---@module "ibl"
      ---@type ibl.config
      opts = {},
    }
  },
  install = { colorscheme = { "catppuccin-mocha" } },
  checker = { enabled = true },
})
