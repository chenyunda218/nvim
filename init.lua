vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.shiftwidth = 2
vim.o.relativenumber = true

-- Leader key
vim.g.mapleader = " "
-- Mapping
-- Map key function
function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>n', ':NvimTreeToggle<CR>')
map('n', '<leader>f', ':NvimTreeFocus<CR>')
map('n', '<leader>s', ':wa<CR>')
-- BufferLine
map('n', '<leader>j', ':BufferLinePick<CR>')
map('n', '<C-h>', ':BufferLineCyclePrev<CR>')
map('n', '<C-l>', ':BufferLineCycleNext<CR>')
map('n', '<C-S-h>', ':BufferLineMovePrev<CR>')
map('n', '<C-S-l>', ':BufferLineMoveNext<CR>')
vim.api.nvim_set_keymap(
  'n',
  '<leader>c',
  ':wa<CR>:BufferLineCloseOthers<CR>',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<leader>x',
  ':BufferLinePickClose<CR>',
  { noremap = true, silent = true }
)

  vim.api.nvim_set_keymap('n', '<leader>d', ':lua vim.lsp.buf.definition()<CR>', {
    noremap = true,
    silent = true,
  })
  vim.api.nvim_set_keymap('n', '<leader>l', ':lua vim.lsp.buf.format()<CR>',
    {
      noremap = true,
      silent = true,
    })

-- Lazy vim configuration
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ import = "plugins" })

-- Copy to clipboard
vim.opt.clipboard = 'unnamedplus'
