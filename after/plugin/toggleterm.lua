require("toggleterm").setup({
  size = 15,
  open_mapping = [[<C-\>]], -- global toggle
  shade_terminals = true,
  shading_factor = 2,
  direction = "float", -- default
  float_opts = {
    border = "curved",
  },
})

-- Keymaps for different layouts
vim.keymap.set("n", "<leader>tf", function()
  require("toggleterm").toggle(1, 15, vim.loop.cwd(), "float")
end, { desc = "Toggle floating terminal" })

vim.keymap.set("n", "<leader>tv", function()
  require("toggleterm").toggle(3, 50, vim.loop.cwd(), "vertical")
end, { desc = "Toggle vertical terminal" })

vim.keymap.set("n", "<leader>tb", function()
  vim.cmd("terminal")
end, { desc = "Open terminal in current buffer" })

-- Terminal mode: exit to normal with <Esc>
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
