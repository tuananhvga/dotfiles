return {
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "nvim-treesitter" },
    config = function()
      require("rest-nvim").setup()
      vim.api.nvim_set_keymap('n', '<leader>rr', '<cmd>Rest run<cr>',
        { noremap = true, silent = true, desc = "Run request under the cursor" })
    end,
  }
}
