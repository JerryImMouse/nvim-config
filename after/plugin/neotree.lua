vim.keymap.set("n", "<leader>nh", ":Neotree toggle reveal_force_cwd<CR>", { desc = "Toggle Neo-tree" })
vim.keymap.set("n", "<leader>H", function()
  require("neo-tree.command").execute({ toggle_hidden = true })
end, { desc = "Toggle hidden files in Neo-tree" })
