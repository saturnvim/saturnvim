return {
  {
    'hrsh7th/cmp-nvim-lsp'
  },
  {
    'hrsh7th/cmp-buffer'
  },
  {
    'hrsh7th/cmp-path'
  },
  {
    'hrsh7th/cmp-cmdline'
  },
  {
    'hrsh7th/cmp-vsnip'
  },
  {
    'hrsh7th/vim-vsnip'
  },
  {
    'onsails/lspkind.nvim'
  },
  {
    'MunifTanjim/prettier.nvim'
  },
  {
    "folke/which-key.nvim",
    config = function ()
      require("which-key").setup({})
    end
  },
  {
    'm4xshen/autoclose.nvim',
    init = function()
      require("autoclose").setup({})
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    init = function()
      require("nvim-ts-autotag").setup({})
    end,
  },
}
