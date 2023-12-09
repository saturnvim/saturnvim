return {
  "stevearc/aerial.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    layout = {
      min_width = 23,
    },
  },
  keys = {
    {
      "<leader>as",
      "<cmd>AerialToggle<CR>",
      desc = "Open code outline window",
    },
  },
}
