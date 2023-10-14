return {
  'rebelot/kanagawa.nvim',
  config = function ()
    require('kanagawa').setup({
      compile = false,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      theme = "dragon",
    })

    vim.cmd("colorscheme kanagawa")
  end
}
