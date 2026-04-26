vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
-- vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
vim.keymap.set("n", "<Esc>", ':noh<CR>', { silent = true })
vim.keymap.set("n", '<leader>th', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = '[T]oggle Inlay [H]ints'})

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

local function open_cheatsheet()
  local path = vim.fn.stdpath("config") .. "/cheatsheet.txt"
  local buf = vim.api.nvim_create_buf(false, true)

  local width = math.ceil(vim.o.columns * 0.8)
  local height = math.ceil(vim.o.lines * 0.8)

  vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    col = math.ceil((vim.o.columns - width) / 2),
    row = math.ceil((vim.o.lines - height) / 2),
    style = 'minimal',
    border = 'rounded',
  })

  vim.cmd('edit ' .. path)
  vim.keymap.set('n', 'q', ':close<CR>', { buffer = buf, silent = true})
end

vim.keymap.set("n", "<leader>ch", open_cheatsheet, { desc = "Open Cheatsheet" });
