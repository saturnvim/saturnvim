local function open_git()
  local exists = vim.fn.isdirectory("./.git")

  if exists == 1 then
    require("git.ui.commit").run()
  else
    require("git.ui.ginit").run()
  end
end

return {
  open_git = open_git,
}
