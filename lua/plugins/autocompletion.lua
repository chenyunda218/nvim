return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require "lspconfig"

      vim.api.nvim_set_keymap('n', '<leader>l', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
      -- python
      lspconfig.pyright.setup {}
      -- typescript
      lspconfig.tsserver.setup {}
      -- java
      lspconfig.jdtls.setup {}
      -- lua
      lspconfig.lua_ls.setup {}
    end,
  }
}
