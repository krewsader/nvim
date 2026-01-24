return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter")
		configs.setup({
			ensure_installed = {
				"c",
				"cpp",
				"ocaml",
				"rust",
				"java",
				"python",
				"typescript",
				"lua",
				"vim",
				"haskell",
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
