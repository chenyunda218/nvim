return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"go",
				"elixir",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"python",
				"javascript",
				"typescript",
				"html",
				"css",
			},
			auto_install = true,
			highlight = {
				enable = true,
			},
		})
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "elixir", "go", "javascript", "typescript" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
