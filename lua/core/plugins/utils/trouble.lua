local icons = require("icons")

return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = true,
  config = function()
    require("trouble").setup({
      signs = {
        error = icons["error"],
        warning = icons["warn"],
        hint = icons["hint"],
        information = icons["info"],
        other = icons["info"],
      },
    })
  end,
  keys = {
    {
      "<leader>aa",
      "<cmd>TroubleToggle<CR>",
      desc = "Open trouble window",
    },
  },
}
