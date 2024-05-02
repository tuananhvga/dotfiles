vim.g.mapleader = ","
vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format { async = true } end, { desc = "Reformat code" })

-- Copy to clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']q', '<cmd>cn<CR>',
  { noremap = true, silent = true, desc = "Go to previous quickfix item" })
vim.api.nvim_set_keymap('n', '[q', '<cmd>cp<CR>', { noremap = true, silent = true, desc = "Go to next quickfix item" })

-- Open tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux_sessionizer<CR>", { desc = "Open tmux sessionizer" })
