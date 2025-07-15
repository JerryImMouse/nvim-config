vim.keymap.set("n", "<leader>rr", function()
  require("toggleterm.terminal").Terminal
    :new({ direction = "float" })
    :toggle()
end, { desc = "Run Floating Terminal" })
