require('mason').setup({
    automatic_installation = true,
    ensure_installed = {
        lsp = {
            "clangd",
            "pyright",
            "lua-language-server"
        }
    }
})
