require("noice").setup({
  lsp = {
    hover = { enabled = true, border = { style = "rounded" } },
    signature = { enabled = true, border = { style = "rounded" } },
  },
  presets = {
    bottom_search = true,
    command_palette = true,
    long_message_to_split = true,
    inc_rename = false,
    lsp_doc_border = true,
  },
})
