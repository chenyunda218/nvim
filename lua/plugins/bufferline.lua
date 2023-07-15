return {
  "akinsho/bufferline.nvim",
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require("bufferline").setup {
      options = {
        offsets = { {
          filetype = "NvimTree",
        } }
      }
    }
    vim.api.nvim_set_keymap(
      'n',
      '<leader>c',
      ':BufferLineCloseOthers<CR>',
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap(
      'n',
      '<leader>x',
      ':BufferLinePickClose<CR>',
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap(
      'n',
      '<leader>z',
      ':BufferLinePickClose<CR>',
      { noremap = true, silent = true }
    )
  end,
}
