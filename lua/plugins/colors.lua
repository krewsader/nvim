vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        local hl = vim.api.nvim_set_hl
        hl(0, "TelescopeNormal", { bg = "none" })
        hl(0, "TelescopeBorder", { bg = "none" })
        hl(0, "TelescopePromptNormal", { bg = "none" })
        hl(0, "TelescopePromptBorder", { bg = "none" })
        hl(0, "TelescopePromptTitle", { bg = "none" })
        hl(0, "TelescopePreviewNormal", { bg = "none" })
        hl(0, "TelescopePreviewBorder", { bg = "none" })
        hl(0, "TelescopePreviewTitle", { bg = "none" })
        hl(0, "TelescopeResultsNormal", { bg = "none" })
        hl(0, "TelescopeResultsBorder", { bg = "none" })
        hl(0, "TelescopeResultsTitle", { bg = "none" })
        hl(0, "HarpoonWindow", {bg = "none"})
        hl(0, "HarpoonBorder", {bg = "none"})
        hl(0, "NormalFloat", {bg = "none"})
        hl(0, "FloatBorder", {bg = "none"})
        hl(0, "FloatTitle", {bg = "none"})
    end,
})

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
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
    end,
  },
  {
    "sainnhe/everforest",
    name = "everforest",
    priority = 1000,
    config = function()
      vim.g.everforest_transparent_background = 1
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        styles = {
          transparency = true,
        },
      })
    end,
  },
}
