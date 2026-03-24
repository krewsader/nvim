return { -- Adds a statusbar written in lua
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'auto'
      },
      sections = {
        lualine_x = {
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return require("noice").api.status.command.has() end,
          },
        },
      },
    })
  end
}
