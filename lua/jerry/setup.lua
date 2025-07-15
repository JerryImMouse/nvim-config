-- Show numbers of the lines
vim.o.number = true

-- Don't wrap text
vim.o.wrap = false

-- 4 spaces instead of a tab
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Some search setup. Just ignores case only when the text typed in lowercase
vim.o.smartcase = true
vim.o.ignorecase = true

vim.o.hlsearch = false

vim.o.signcolumn = 'yes'

-- Sync OS clipboard with nvim's
vim.o.clipboard = "unnamedplus"
