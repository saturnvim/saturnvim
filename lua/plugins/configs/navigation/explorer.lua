return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
      },
      renderer = { 
        root_folder_label = false,
        icons = {
           show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = false,
            modified = false,
            diagnostics = false,
            bookmarks = false,
          },
        }
      }
    })
  end
}
