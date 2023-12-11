-- Movement
vim.api.nvim_set_keymap("n", "<C-h>", [[ <C-w>h ]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", [[ <C-w>l ]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", [[ <C-w>j ]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", [[ <C-w>k ]], { noremap = true, silent = true })

-- Split
vim.api.nvim_set_keymap("n", "<C-s>", [[<cmd>split<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-v>", [[<cmd>vsplit<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", [[<cmd>close<CR>]], { noremap = true, silent = true })

-- Buffers
vim.api.nvim_set_keymap(
  "n", "[", [[<cmd>BufferLineCyclePrev<CR>]],
  {
    noremap = true,
    silent = true,
    desc = "Go to previous buffer"
  }
)

vim.api.nvim_set_keymap(
  "n", "]", [[<cmd>BufferLineCycleNext<CR>]],
  {
    noremap = true,
    silent = true,
    desc = "Go to next buffer"
  }
)

vim.api.nvim_set_keymap(
  "n", "<leader>dd", [[<cmd>bd<CR>]],
  {
    noremap = true,
    silent = true,
    desc = "Close buffer"
  }
)

vim.api.nvim_set_keymap(
  "n", "bh", [[<cmd>BufferLineCyclePrev<CR>]],
  {
    noremap = true,
    silent = true,
    desc = "Go to previous buffer"
  }
)
vim.api.nvim_set_keymap(
  "n", "bl", [[<cmd>BufferLineCycleNext<CR>]],
  {
    noremap = true,
    silent = true,

    desc = "Go to next buffer"
  }
)
