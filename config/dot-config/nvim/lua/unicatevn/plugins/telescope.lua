return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.2',
  dependencies = { 'nvim-lua/plenary.nvim', 'debugloop/telescope-undo.nvim' },
  config = function()
    require("telescope").setup({
      extensions = {
        undo = {
          side_by_side = true,
          layout_strategy = "horizontal",
          layout_config = {
            preview_height = 0.8,
          },
          mappings = {
            i = {
              ["<s-cr>"] = require("telescope-undo.actions").yank_additions,
              ["<c-cr>"] = require("telescope-undo.actions").yank_deletions,
              ["<cr>"] = require("telescope-undo.actions").restore
            },
          },
        },
      },
    })
    require("telescope").load_extension("undo")

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Telescope: Find Files" })
    vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = "Telescope: Git Files" })
    vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = "Telescope: Live Grep" })
    vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = "Telescope: Treesitter" })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Telescope: Buffers" })
    vim.keymap.set('n', '<leader>fa', builtin.builtin, { desc = "Telescope: Arbitrary" })
    vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = "Telescope: LSP References" })
    vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>", { desc = "Telescope: Undo" })
  end
}
