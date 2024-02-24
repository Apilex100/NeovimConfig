return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.compilers = { "gcc" }
		configs.setup({
			ensure_installed = { "lua", "cpp", "python", "javascript", "vim", "cmake" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
