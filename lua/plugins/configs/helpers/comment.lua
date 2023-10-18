return {
  "numToStr/Comment.nvim",
  lazy = true,
  keys = {
    { "gcc", mode = "n",          desc = "Comment current line" },
    { "gc",  mode = { "n", "o" }, desc = "Comment linewise" },
    { "gc",  mode = "x",          desc = "Comment linewise" },
    { "gbc", mode = "n",          desc = "Comment current block" },
    { "gb",  mode = { "n", "o" }, desc = "Comment blockwise" },
    { "gb",  mode = "x",          desc = "Comment blockwise" },
  },
  config = function(_, opts)
    require("Comment").setup(opts)
  end,
}
