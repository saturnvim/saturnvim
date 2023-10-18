local icons = require("icons")

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          {
            "mode",
          },
        },
        lualine_b = {},
        lualine_c = {
          {
            "filename",
          },
          {
            "branch",
            icon = icons["git_branch"],
          },
          {
            "diff",
            symbols = { added = icons["git_add"], modified = icons["git_edit"], removed = icons["git_del"] },
          },
        },
        lualine_x = {
          {
            "diagnostics",
            symbols = {
              error = icons["error"],
              warn = icons["warn"],
              info = icons["warn"],
              hint = icons["hint"],
            },
          },
        },
        lualine_y = {},
        lualine_z = {
          "progress",
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
