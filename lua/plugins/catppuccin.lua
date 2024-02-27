return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        local configs = require("catppuccin")
        configs.setup({
            flavour = "mocha",
            -- Use this for dark background
            --   color_overrides = {
            --       mocha = {
            --           base = "#000000",
            --           mantle = "#000000",
            --           crust = "#000000",
            --       },
            --   },
        })
        vim.cmd.colorscheme("catppuccin")
    end,
}
