-- Leader set to <space>
vim.g.mapleader = " "

-- remap ESC
-- just smash your jk to exit insert mode :) 
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Leave insert mode', noremap = true })
vim.keymap.set('i', 'kj', '<Esc>', { desc = 'Leave insert mode', noremap = true })

-- Neotree
vim.keymap.set("n", "<leader>ob", "<cmd>Neotree buffers toggle left<CR>", { desc = "Show open buffers" })
vim.keymap.set("n", "<leader>of", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })

-- Move to the end of the line
vim.keymap.set('i', '<C-e>', '<End>')

-- Move between windows like in tmux
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move right' })

-- Closing nvim
vim.keymap.set('n', '<leader>qa', '<cmd>qa!<cr>', { desc = 'Exit Nvim closing all windows' })

-- Resize windows
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
