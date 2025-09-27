local capabilities = vim.tbl_deep_extend(
  "force",
  vim.lsp.protocol.make_client_capabilities(),
  require("cmp_nvim_lsp").default_capabilities()
)

local on_attach = function(_, bufnr)
	local map = function(mode, lhs, rhs, desc)
		vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc})
	end

	map("n", "K", vim.lsp.buf.hover, "Hover docs")
	map("n", "gd", vim.lsp.buf.definition, "Go to definition")
	map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
	map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
	map("n", "go", vim.lsp.buf.type_definition, "Go to type definition")
	map("n", "gr", vim.lsp.buf.references, "Go to references")
	map("n", "gs", vim.lsp.buf.signature_help, "Signature help")

	map("n", "<F2>", vim.lsp.buf.rename, "Rename symbol")
	map({"n", "x"}, "<F3>", function()
		vim.lsp.buf.format({async = true})
	end, "Format code")
	map("n", "<F4>", vim.lsp.buf.code_action, "Code action")

	map("n", "<leader>sd", vim.diagnostic.open_float, "Show diagnostics")

end

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
	function(server)
		lspconfig[server].setup({
			capabilities = capabilities,
			on_attach = on_attach
		})
	end,
})
