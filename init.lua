vim.pack.add({
  {src = "https://github.com/mason-org/mason.nvim"},
  {src = "https://github.com/nvim-lualine/lualine.nvim"},
  {src = "https://github.com/nvim-tree/nvim-tree.lua"},
  {src = "https://github.com/karb94/neoscroll.nvim"},
  {src = "https://github.com/catppuccin/nvim"},
})

vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.shiftwidth = 2
vim.o.relativenumber = true
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", { desc = "toggle nvim tree" })

require("mason").setup()
require("plugins/lualine")
require("plugins/nvim-tree")
require("plugins/neoscroll")
require("plugins/theme")
