return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
	  window = {
		  mappings = {
			  ["<CR>"] = "noop",
			  ["l"] = "open",
			  ["h"] = "close_node",
			  ["<space>"] = "toggle_node",
		  }
	  }
  },
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
}
