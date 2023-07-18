return {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
      }
    },
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = function ()
      require("mason").setup()
    end
}
