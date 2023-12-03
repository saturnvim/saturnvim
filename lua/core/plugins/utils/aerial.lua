return {
  "stevearc/aerial.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = true,
  config = function()
    require("aerial").setup({
      layout = {
        min_width = 23,
      },
      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,
    })
  end,
  keys = {
    {
      "<leader>as",
      "<cmd>AerialToggle<CR>",
      desc = "Open code outline window",
    },
  },
}
