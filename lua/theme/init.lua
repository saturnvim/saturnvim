local function open_theme_selector()
  vim.ui.select({
    "catpuccin",
    "catpuccin-late",
    "catpuccin-frappe",
    "catpuccin-macchiato",
    "catpuccin-mocha",
    "rose-pine",
    "kanagawa",
    "kanagawa-wave",
    "kanagawa-dragon",
    "kanagawa-lotus",
  }, {
    prompt = "Choose a theme",
    telescope = require("telescope.themes").get_cursor(),
  }, function(selected)
    vim.cmd("colorscheme " .. selected)
  end)
end

return {
  open_theme_selector = open_theme_selector,
}
