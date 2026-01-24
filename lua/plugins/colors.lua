return {
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
          style = "nvchad" -- Optional: makes telescope look extra clean
        },
        -- Add other plugins here as you install them
      },
    })

    -- setup must be called before loading the colorscheme
    vim.cmd.colorscheme "catppuccin"
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "none", bg = "none" })
  end
}
