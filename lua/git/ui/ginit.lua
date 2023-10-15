local Input = require("nui.input")
local Layout = require("nui.layout")
local event = require("nui.utils.autocmd").event

local function run()
  local repo_url = Input({
    border = {
      style = "single",
      text = {
        top = "Repository to Initialize",
      },
    },
  }, {
    on_submit = function(value)
      if string.len(value) == 0 or not value then
        return
      else
        vim.cmd("Git init")
        vim.cmd("Git branch -M main")
        vim.cmd("Git remote add origin " .. value)
      end
    end,
  })

  local layout = Layout(
    {
      position = "50%",
      size = {
        width = 65,
        height = "10%",
      },
    },
    Layout.Box({
      Layout.Box(repo_url, { size = "60%" }),
    }, { dir = "col" })
  )

  repo_url:on(event.BufLeave, function()
    repo_url:unmount()
  end)

  layout:mount()
end

return {
  run = run,
}
