require("config.lazy")
vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "跳到定義" })
