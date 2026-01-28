return { -- Colorschemes
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				integrations = {
					neotree = true,
					treesitter = true,
					telescope = {
						enabled = true,
						style = "nvchad", -- Optional: makes telescope look extra clean
					},
				},
			})

			-- setup must be called before loading the colorscheme
			vim.cmd.colorscheme("catppuccin")
			vim.api.nvim_set_hl(0, "WinSeparator", { fg = "none", bg = "none" })
		end,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				transparent_background = true,
				integrations = {
					neotree = true,
					treesitter = true,
					telescope = {
						enabled = true,
						style = "nvchad", -- Optional: makes telescope look extra clean
					},
				},
			})
		end,
	},
	{
		"sainnhe/everforest",
		name = "everforest",
		priority = 1000,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				transparent_background = true,
				integrations = {
					neotree = true,
					treesitter = true,
					telescope = {
						enabled = true,
						style = "nvchad", -- Optional: makes telescope look extra clean
					},
				},
			})
		end,
	},
}
