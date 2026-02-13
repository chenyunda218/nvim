vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/karb94/neoscroll.nvim" },
	{ src = "https://github.com/catppuccin/nvim" },
	{ src = "https://github.com/akinsho/bufferline.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/petertriho/nvim-scrollbar" },
	{ src = "https://github.com/folke/noice.nvim" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/rcarriga/nvim-notify" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("^1"),
	},
})

vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.shiftwidth = 2
vim.o.relativenumber = true
vim.g.mapleader = " "

vim.keymap.set({ "n" }, "<leader>n", "<cmd>NvimTreeToggle<CR>", { desc = "toggle nvim tree" })

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<leader>p", "<cmd>BufferLinePick<CR>")

require("plugins/lualine")
require("plugins/nvim-tree")
require("plugins/neoscroll")
require("plugins/theme")
require("plugins/bufferline")
require("plugins/nvim-web-devicons")
require("plugins/nvim-scrollbar")
require("plugins/noice")
require("plugins/autopairs")
require("plugins/conform")
require("plugins/mason")
require("plugins/nvim-treesitter")
require("plugins/blink")
