vim.pack.add({
		"nvim-tree/nvim-web-devicons",
"https://github.com/folke/tokyonight.nvim",
"https://github.com/nvim-lualine/lualine.nvim"
})


vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = " "
require("status_line")
require("file_exportor")
require("search")
require("popup")
require("buffer")
require("oc")
require("scroll")
require("session")

vim.cmd[[colorscheme tokyonight]]

