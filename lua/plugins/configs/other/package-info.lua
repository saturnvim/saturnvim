local icons = require("icons")

return {
  'vuki656/package-info.nvim',
  dependencies = { "MunifTanjim/nui.nvim" },
  init = function()
    require('package-info').setup({
      icons = {
        enable = true,
        style = {
          up_to_date = icons["check"] .. "  ",
          outdated = icons["skip"] .. "  ",
        },
      },
      autostart = true,
    })
  end,
  keys = {
    {
      "<leader>pnu",
      "<cmd>lua require('package-info').update()<cr>",
      desc = "Update dependency on the line"
    },
    {
      "<leader>pni",
      "<cmd>lua require('package-info').install()<cr>",
      desc = "Install a new dependency"
    },
    {
      "<leader>pnd",
      "<cmd>lua require('package-info').delete()<cr>",
      desc = "Delete dependency on the line"
    },
    {
      "<leader>pne",
      "<cmd>lua require('package-info').change_version()<cr>",
      desc = "Install a different dependency version"
    },
  }
}
