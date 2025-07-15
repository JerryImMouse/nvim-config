require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
        ["<C-n>"] = require('telescope.actions').cycle_history_next,
        ["<C-p>"] = require('telescope.actions').cycle_history_prev,
      },
    },
  },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep,   { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffer' })
vim.keymap.set('n', '<leader>fs', require('telescope.builtin').lsp_document_symbols, {
  desc = 'Find symbols in file (functions, structs, etc)'
})
