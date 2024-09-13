require('telescope').setup({

defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        width = 0.9,
        height = 0.8,
        preview_cutoff = 120,
        prompt_position = "top",
      },
    },
    border = true,
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    file_ignore_patterns = { "node%_modules/.*" }
  }

})
local builtin = require('telescope.builtin')

-- Key mapping for "go to definition" using Telescope
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua require"telescope.builtin".lsp_definitions()<CR>', { noremap = true, silent = true })

-- Key mapping for "go to references" using Telescope
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua require"telescope.builtin".lsp_references()<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
