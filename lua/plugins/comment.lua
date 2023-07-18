return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      ignore = '^$',
      toggler = {
        link = '<leader>/',
        block = '<leader>/'
      },
      opleader = {
        link = '<leader>/',
        block = '<leader>/'
      }
    })
  end
}
