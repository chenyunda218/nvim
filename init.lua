require("config.lazy")

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
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gb", "<cmd>b#<CR>")
vim.cmd([[colorscheme tokyonight]])
