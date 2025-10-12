return {
  'mason-org/mason.nvim',
  event = "VeryLazy",
  dependencies = {
  },
  opts = {},
  config = function(_, opts)
    require("mason").setup(opts)
  end,
}
