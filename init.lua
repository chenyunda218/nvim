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
-- close buffer
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>")
vim.api.nvim_set_keymap("t", "<C-Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })



vim.cmd([[colorscheme tokyonight]])

