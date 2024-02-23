return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"markdown",
				"markdown_inline",
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"python",
				"go",
				"html",
				"css",
				"bash",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			auto_install = true,
		})
	end,
}
