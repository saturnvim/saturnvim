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
            folder = {
              default = "󰉋",
              empty = "󰉋",
              empty_open = "󰝰",
              open = "󰝰",
              symlink = "󰾶",
              symlink_open = "󰝰",
              arrow_open = "",
              arrow_closed = "",
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
