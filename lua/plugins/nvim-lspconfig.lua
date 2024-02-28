return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require "lspconfig"
      -- python
      lspconfig.pyright.setup {

      }
      -- typescript
      lspconfig.tsserver.setup {

      }
      -- java
      -- lspconfig.jdtls.setup {}
      -- lua
      lspconfig.lua_ls.setup {
      }
      -- golang
      lspconfig.gopls.setup {
      }
      -- yaml
      lspconfig.wgsl_analyzer.setup {}
    end,
  }
}
