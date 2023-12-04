return {
  "navarasu/onedark.nvim",
  init = function()
    require('onedark').setup({
      style = 'darker'
    })

    vim.cmd('colorscheme onedark')
  end,
}
