local Popup = require("nui.popup")
local Layout = require("nui.layout")
local event = require("nui.utils.autocmd").event
local Input = require("nui.input")

local function open_git()
  local commit_msg = Input({
    border = {
      style = "single",
      text = {
        top = "Commit Message",
      },
    },
  }, {
    on_submit = function(value)
      vim.cmd("Git add .")
      vim.cmd('Git commit -m "' .. value .. '"')
      vim.cmd("Git push")
    end,
  })

  local changes_box = Popup({
    border = "single",
  })

  local layout = Layout(
    {
      position = "50%",
      size = {
        width = 80,
        height = "60%",
      },
    },
    Layout.Box({
      Layout.Box(commit_msg, { size = "40%" }),
      Layout.Box(changes_box, { size = "60%" }),
    }, { dir = "row" })
  )

  local diff = vim.fn.system("git status")
  local diff_lines = vim.split(diff, "\n")

  for i, line in ipairs(diff_lines) do
    diff_lines[i] = tostring(line)
  end

  vim.api.nvim_buf_set_lines(changes_box.bufnr, 0, 1, false, diff_lines)

  changes_box:on(event.BufLeave, function()
    changes_box:unmount()
  end)

  commit_msg:on(event.BufLeave, function()
    commit_msg:unmount()
  end)

  layout:mount()
end

return {
  open_git = open_git,
}
