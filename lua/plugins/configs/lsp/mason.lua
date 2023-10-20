local icons = require("icons")

return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason.nvim" },
  init = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = icons["check"],
          package_pending = icons["dot"],
          package_uninstalled = icons["x"],
        },
      },
      ensure_installed = {
        "prettier",
      },
    })
  end,
}
