vim.g.mapleader = ","
vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format { async = true } end, { desc = "Reformat code" })

-- Copy to clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']q', '<cmd>cn<CR>',
  { noremap = true, silent = true, desc = "Go to previous quickfix item" })
vim.api.nvim_set_keymap('n', '[q', '<cmd>cp<CR>', { noremap = true, silent = true, desc = "Go to next quickfix item" })

-- Diff keymap
vim.api.nvim_set_keymap('n', '<C-g>', '<cmd>Gvdiffsplit!<CR>', { noremap = true, silent = true, desc = "Three ways git diff" })
vim.keymap.set('v', '<leader>dp', function ()
  vim.cmd('diffput')
  vim.cmd('diffupdate')
end, { desc = "Diff put" })
vim.keymap.set('v', '<leader>dg', function ()
  vim.cmd('diffget')
  vim.cmd('diffupdate')
end, { desc = "Diff get" })
vim.keymap.set('v', '<leader>dt', function ()
  vim.cmd('diffget //2')
  vim.cmd('diffupdate')
end, { desc = "Diff get target branch" })
vim.keymap.set('v', '<leader>dy', function ()
  vim.cmd('diffget //3')
  vim.cmd('diffupdate')
end, { desc = "Diff get merge branch" })

-- Open tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux_sessionizer<CR>", { desc = "Open tmux sessionizer" })
