return {
  'jay-babu/mason-null-ls.nvim',
  init = function ()
    require("mason-null-ls").setup({
      ensure_installed = { "stylua", "spell", "eslint" }
    })
  end
}
