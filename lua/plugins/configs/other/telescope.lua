return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = true,
  config = function()
    require("telescope").setup({
      pickers = {
        find_files = {
          previewer = false,
        },
        file_browser = {
          previewer = false,
        },
        buffers = {
          previewer = false,
        },
      },
    })
  end,
  keys = {
    {
      "<leader><space>",
      "<cmd>lua require('telescope.builtin').buffers()<cr>",
      desc = "Find files",
    },
    {
      "<leader>?",
      "<cmd>lua require('telescope.builtin').find_files()<cr>",
      desc = "Find files",
    },
    {
      "<leader>/",
      "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({ winblend = 10, previewer = false }))<cr>",
      desc = "Fuzzily search in current buffer",
    },
  },
}
