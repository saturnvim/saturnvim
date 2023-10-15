return {
  "rebelot/kanagawa.nvim",
  init = function()
    require("kanagawa").setup({
      compile = false,
    })

    vim.cmd("colorscheme kanagawa")
  end,
}
