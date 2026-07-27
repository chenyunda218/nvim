return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = {
		settings = {
			jsx_close_tag = {
				enable = false, -- Disable if using nvim-ts-autotag to prevent conflicts
			},
			tsserver_file_preferences = {
				includeInlayParameterNameHints = "all", -- Shows inline type hints
				includeInlayVariableTypeHints = true,
			},
		},
	},
}
