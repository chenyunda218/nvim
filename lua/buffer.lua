vim.pack.add({ "akinsho/bufferline.nvim" })

require("bufferline").setup({})

vim.keymap.set("n", "<leader>p", ":BufferLinePick<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":BufferLinePickClose<CR>", { noremap = true, silent = true })
