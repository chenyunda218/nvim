vim.pack.add({
	"nvim-tree/nvim-web-devicons",
	"https://github.com/folke/tokyonight.nvim",
	"https://github.com/nvim-lualine/lualine.nvim",
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
require("mason_setup")
require("java_setup")
if vim.fn.has("mac") == 1 then
	vim.opt.shell = "/bin/zsh"
	-- 配套 zsh 參數，避免執行命令亂碼
	vim.opt.shellcmdflag = "-c"
	vim.opt.shellquote = ""
	vim.opt.shellxquote = ""
end
vim.cmd([[colorscheme tokyonight]])
