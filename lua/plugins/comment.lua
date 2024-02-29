return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      ignore = '^$',
      toggler = {
        link = '<C-/>',
        block = '<C-/>'
      },
      opleader = {
        link = '<C-/>',
        block = '<C-/>'
      }
    })
  end
}
