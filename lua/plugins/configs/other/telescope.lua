return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = true,
  config = function()
    require("telescope").setup({
      defaults = {
        prompt_prefix = "   ",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.60,
          height = 0.30,
        },
        file_ignore_patterns = { "node_modules" },
      },
      pickers = {
        find_files = {
          previewer = false,
          theme = "dropdown",
        },
        file_browser = {
          previewer = false,
          theme = "dropdown",
        },
        buffers = {
          previewer = false,
          theme = "dropdown",
        },
        git_status = {
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
            width = 0.75,
            height = 0.40,
          },
        },
        git_branches = {
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
            width = 0.75,
            height = 0.40,
          },
        },
        man_pages = {
          previewer = false,
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
            width = 0.75,
            height = 0.40,
          },
        },
        help_tags = {
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
    {
      "<leader>al",
      "<cmd>Telescope filetypes<CR>",
      desc = "Change the current buffer language",
    },
    {
      "<leader>gs",
      "<cmd>Telescope git_status<CR>",
      desc = "View current git status",
    },
    {
      "<leader>gc",
      "<cmd>Telescope git_commits<CR>",
      desc = "View current git repository commits",
    },
    {
      "<leader>gb",
      "<cmd>Telescope git_branches<CR>",
      desc = "View current git repository branches",
    },
    {
      "<leader>gf",
      "<cmd>Telescope git_files<CR>",
      desc = "View current git repository files",
    },
    {
      "<leader>um",
      "<cmd>Telescope man_pages<CR>",
      desc = "Open a manual (man)",
    },
    {
      "<leader>h",
      "<cmd>Telescope help_tags<CR>",
      desc = "Get help!",
    },
  },
}
