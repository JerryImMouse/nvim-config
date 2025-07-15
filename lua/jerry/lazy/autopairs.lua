return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true, -- enable Treesitter integration
      enable_check_bracket_line = false, -- allow pairs like `print()` in one line
    })
  end,
}
