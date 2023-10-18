-- TODO: Hello World!
-- HACK: Hello World!
-- WARN: Hello World!
-- PERF: Hello World!
-- NOTE: Hello World!
-- TEST: Hello World!

return {
  "folke/todo-comments.nvim",
  config = function()
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
