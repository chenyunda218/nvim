return {
	"wsdjeg/picker.nvim",
	event = "VeryLazy",
	config = function()
		require("picker").setup({
			filter = {
				ignorecase = false, -- ignorecase (boolean): defaults to false
				matcher = "fzy", -- 'fzy', 'matchfuzzy', or 'levenshtein'
			},
			window = {
				width = 0.8, -- set picker screen width, default is 0.8 * vim.o.columns
				height = 0.8,
				col = 0.1,
				row = 0.1,
				border = "rounded",
				current_icon = ">",
				current_icon_hl = "CursorLine",
				enable_preview = false,
				preview_timeout = 500,
				show_score = false, -- display/hide match score at the end of each item.
			},
			highlight = {
				matched = "Tag",
				score = "Comment",
			},
			prompt = {
				position = "bottom", -- set prompt position, bottom or top
				icon = ">",
				icon_hl = "Error",
				insert_timeout = 100,
				title = true, -- display/hide source name
			},
			mappings = {
				close = "<Esc>",
				next_item = "<Tab>",
				previous_item = "<S-Tab>",
				open_item = "<Enter>",
				toggle_preview = "<C-p>",
			},
		})
		vim.keymap.set("n", "<leader>fb", ":Picker buffers<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>ff", ":Picker files<CR>", { noremap = true, silent = true })
	end,
}
