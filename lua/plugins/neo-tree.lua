return { -- Adds a file tree system on the left to navigate files more easily 
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, but recommended
  },
  lazy = false, -- neo-tree will lazily load itself
  config = function()
    require("neo-tree").setup({
      window = {
        width = 25,
      },
    })
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
    vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", { silent = true })
    vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", { silent = true })
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { silent = true })
  end
}
