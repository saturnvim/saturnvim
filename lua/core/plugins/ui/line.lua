local icons = require("icons")

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = {
        {
          "mode",
          icon = ""
        },
      },
      lualine_b = {},
      lualine_c = {
        {
          "filename",
          file_status = false,
        },
        {
          "branch",
          icon = icons["git_branch"],
        },
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
      lualine_x = {
        {
          "diff",
          symbols = { added = icons["git_add"], modified = icons["git_edit"], removed = icons["git_del"] },
        },
        {
          'filetype',
          colored = true,
          icon_only = true,
        },
        {
          'fileformat',
          symbols = {
            unix = '󰌽 ', -- e712
            dos = ' ', -- e70f
            mac = ' ', -- e711
          }
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
  }
}
