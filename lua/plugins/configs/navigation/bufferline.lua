return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            separator = false,
          },
        },
        style_preset = {
          bufferline.style_preset.no_italic,
          bufferline.style_preset.default,
        },
      },
    })
  end,
}
