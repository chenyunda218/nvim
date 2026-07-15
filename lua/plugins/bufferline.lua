return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",

	config = function()
		require("bufferline").setup({})

		vim.keymap.set("n", "<leader>p", ":BufferLinePick<CR>", { noremap = true, silent = true })
	end,
}
