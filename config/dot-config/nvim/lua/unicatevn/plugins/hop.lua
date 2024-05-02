return {
  'phaazon/hop.nvim',
  branch = 'v2',
  config = function(_)
    local hop = require('hop')
    hop.setup { keys = 'etovxqpdygfblzhckisuran' }
    vim.keymap.set('', '<leader>w', function()
      hop.hint_words({ current_line_only = false })
    end, { remap = true, desc = 'Hop: Words' })
    vim.keymap.set('n', '<leader>s', function()
      hop.hint_char1({ current_line_only = false })
    end, { remap = false, desc = 'Hop: Chars' })
    vim.keymap.set('v', '<leader>s', function()
      hop.hint_char1({ current_line_only = false })
    end, { remap = false, desc = 'Hop: Chars Visual' })
  end
}
