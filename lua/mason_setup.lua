vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
})
require("mason").setup()
require("mason-lspconfig").setup({
	automatic_enable = {
		exclude = {
			"lua_ls",
			"rust_analyzer",
			"ts_ls",
		},
	},
})

vim.api.nvim_create_user_command("Format", function()
	vim.lsp.buf.format()
end, { desc = "format" })

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.lsp.buf.format()
	end,
})
