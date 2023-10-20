vim.api.nvim_set_keymap("n", "<C-h>", [[ <C-w>h ]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", [[ <C-w>l ]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", [[ <C-w>j ]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", [[ <C-w>k ]], { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "[", [[<cmd>BufferLineCyclePrev<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]", [[<cmd>BufferLineCycleNext<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bd", [[<cmd>bd<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-s>", [[<cmd>split<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-v>", [[<cmd>vsplit<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", [[<cmd>close<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  "n",
  "<leader>ut",
  [[<cmd>lua require("theme").open_theme_selector()<CR>]],
  { noremap = true, silent = true }
)
