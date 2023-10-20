local icons = require("icons")

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
      },
      renderer = {
        root_folder_label = false,
        highlight_git = false,
        highlight_opened_files = "none",
        indent_markers = {
          enable = false,
        },
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

          glyphs = {
            default = icons["file"],
            symlink = icons["file_symlink"],
            bookmark = icons["mark"],
            modified = icons["dot"],
            folder = {
              default = icons["dir"],
              empty = icons["dir_empty"],
              empty_open = icons["dir_empty_open"],
              open = icons["dir_open"],
              symlink = icons["dir_symlink"],
              symlink_open = icons["dir_symlink_open"],
              arrow_open = icons["arrow_open"],
              arrow_closed = icons["arrow_closed"],
            },
          },
        },
      },
    })
  end,
  keys = {
    {
      "<leader>e",
      "<cmd>NvimTreeToggle<CR>",
      desc = "Toggle file tree",
    },
  },
}
