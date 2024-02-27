return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.compilers = { "gcc" }
		configs.setup({
			ensure_installed = { "c", "cmake", "cpp", "javascript", "lua", "python", "vim", "vimdoc"  },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
