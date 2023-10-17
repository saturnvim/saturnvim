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
        lualine_a = { "mode" },
        lualine_b = {},
        lualine_c = {
          {
            "filename",
          },
          {
            "branch",
            icon = "󰘬",
          },
          "diff",
          "diagnostics",
        },
        lualine_x = { "filetype" },
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
