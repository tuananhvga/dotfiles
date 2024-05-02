return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',     -- optional
  },
  config = function()
    local api = require "nvim-tree.api"
    require("nvim-tree").setup {
      on_attach = function(bufnr)
        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
      end,
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    }

    local function toggle_nvim_tree()
      api.tree.toggle { find_file = true, focus = true, current_window = true }
    end
    vim.keymap.set('n', '<leader>n', toggle_nvim_tree, { desc = "nvim-tree: Toggle" })
  end
}
