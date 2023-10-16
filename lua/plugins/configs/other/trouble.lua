return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = true,
  config = function()
    require("trouble").setup({})
  end,
  keys = {
    {
      "<leader>aa",
      "<cmd>TroubleToggle<CR>",
      desc = "Open trouble window",
    },
  },
}
