return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.compilers = { "gcc" }
        configs.setup({
            ensure_installed = { "go", "rust", "c", "cmake", "cpp", "javascript", "lua", "python", "vim", "vimdoc" },
            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
