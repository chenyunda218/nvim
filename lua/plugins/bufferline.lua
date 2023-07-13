return {
  "akinsho/bufferline.nvim",
  config = function() 
    require("bufferline").setup{
      options = {
        offsets = {{
          filetype = "NvimTree",
        }}
      }
    }
  end,
}
