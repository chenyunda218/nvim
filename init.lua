require("config.lazy")
require("config.lsp")

vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.shiftwidth = 2
vim.o.relativenumber = true

local keymap = vim.keymap.set

keymap("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", { desc = "toggle nvim tree" })

keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")
keymap("n", "<leader>p", "<cmd>BufferLinePick<CR>")
keymap("n", "gd", vim.lsp.buf.definition, { desc = "jumb to definition" })
keymap("n", "gr", vim.lsp.buf.references)
keymap("n", "gi", vim.lsp.buf.implementation)
keymap("n", "K", vim.lsp.buf.hover)

local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
keymap("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
keymap("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
keymap("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.o.winborder = "rounded"
