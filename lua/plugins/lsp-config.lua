return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver", "jedi_language_server", "clangd" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                cmd = { "lua-language-server.cmd", "--stdio" },
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities,
                cmd = { "typescript-language-server.cmd", "--stdio" },
            })
            lspconfig.jedi_language_server.setup({
                capabilities = capabilities,
                cmd = { "jedi-language-server.cmd", "--stdio" },
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = { "clangd.cmd", "--stdio" },
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
