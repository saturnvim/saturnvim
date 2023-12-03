return {
  "akinsho/toggleterm.nvim",
  lazy = true,
  config = function()
    require("toggleterm").setup()
  end,
  keys = {
    {
      "<leader>ot",
      "<cmd>ToggleTerm<CR>",
      desc = "Open a new terminal",
    },
  },
}
