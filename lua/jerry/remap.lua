
-- Leader set to <space>
vim.g.mapleader = " "

-- Useless, needed at first setup to open default nvim's file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', { desc = 'Save current file' })
vim.keymap.set('n', '<leader>q', '<cmd>quitall<cr>', { desc = 'Exit vim' })

-- remap ESC
-- just smash your jk to exit insert mode :) 
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Leave insert mode', noremap = true })
vim.keymap.set('i', 'kj', '<Esc>', { desc = 'Leave insert mode', noremap = true })

-- Neotree
vim.keymap.set("n", "<leader>ob", "<cmd>Neotree buffers toggle left<CR>", { desc = "Show open buffers" })
vim.keymap.set("n", "<leader>of", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })

-- Go to next/previous buffer
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', { desc = 'Previous buffer' })

-- Close current buffer
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete current buffer' })

-- List buffers
vim.keymap.set('n', '<leader>bl', ':ls<CR>:b ', { desc = 'List and jump to buffer' })

-- Move to the start/end of the line
vim.keymap.set('i', '<C-a>', '<Home>')
vim.keymap.set('i', '<C-e>', '<End>')

-- Move between windows like in tmux
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move right' })

-- Switch between relative numbers
vim.keymap.set('n', '<leader>tr', function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { desc = 'Toggle relative line numbers' })
