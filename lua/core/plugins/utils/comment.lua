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
}, {
  "folke/todo-comments.nvim",
  config = function()
    -- TODO: Hello World!
    -- HACK: Hello World!
    -- WARN: Hello World!
    -- PERF: Hello World!
    -- NOTE: Hello World!
    -- TEST: Hello World!

    require("todo-comments").setup({
      keywords = {
        FIX = {
          icon = " ",
          color = "error",
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
        },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = " ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
    })
  end,
}
