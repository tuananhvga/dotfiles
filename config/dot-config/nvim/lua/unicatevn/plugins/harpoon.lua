return {
  'ThePrimeagen/harpoon',
  config = function(_)
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set('n', 'mm', ui.toggle_quick_menu, { desc = "Harpoon: Toggle Quick Menu" })
    vim.keymap.set('n', '<C-s>', ui.nav_next, { desc = "Harpoon: Next" })
    vim.keymap.set('n', '<C-S>', ui.nav_prev, { desc = "Harpoon: Prev" })
    vim.keymap.set('n', 'ma', mark.add_file, { desc = "Harpoon: Add File" })
  end
}
