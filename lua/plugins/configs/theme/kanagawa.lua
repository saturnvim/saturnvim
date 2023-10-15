return {
  "rebelot/kanagawa.nvim",
  init = function()
    require("kanagawa").setup({
      compile = false,
    })
  end,
}
