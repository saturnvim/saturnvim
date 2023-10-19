return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      override_by_filename = {
        [".gitignore"] = {
          icon = "󰊢",
          color = "#f1502f",
          name = "Gitignore",
        },
        ["bower.json"] = {
          icon = "",
          color = "#ef5734",
          name = "Bower",
        },
        [".eslintrc.js"] = {
          icon = "󰱺",
          color = "#4b32c3",
          name = "Eslint",
        },
        [".eslintrc.cjs"] = {
          icon = "󰱺",
          color = "#4b32c3",
          name = "Eslint",
        },
        [".eslintrc.yaml"] = {
          icon = "󰱺",
          color = "#4b32c3",
          name = "Eslint",
        },
        [".eslintrc.yml"] = {
          icon = "󰱺",
          color = "#4b32c3",
          name = "Eslint",
        },
        [".eslintrc.json"] = {
          icon = "󰱺",
          color = "#4b32c3",
          name = "Eslint",
        },
        [".eslintignore"] = {
          icon = "󰱺",
          color = "#4b32c3",
          name = "Eslint",
        },
        [".stackblitzrc"] = {
          icon = "󱐋",
          color = "#3f95c6",
          name = "Stackblitz",
        },
      },
      override_by_extension = {
        ["ts"] = {
          icon = "󰛦",
          color = "#007acc",
          name = "Typescript",
        },
        ["cts"] = {
          icon = "󰛦",
          color = "#007acc",
          name = "Typescript",
        },
        ["js"] = {
          icon = "󰌞",
          color = "#f0db4f",
          name = "Javascript",
        },
        ["cjs"] = {
          icon = "󰌞",
          color = "#f0db4f",
          name = "Javascript",
        },
        ["mjs"] = {
          icon = "󰌞",
          color = "#f0db4f",
          name = "Javascript",
        },
        ["md"] = {
          icon = "",
          color = "#57bce8",
          name = "markdown",
        },
        ["mdx"] = {
          icon = "",
          color = "#fcb32c",
          name = "markdownx",
        },
        ["png"] = {
          icon = "󰋩",
          color = "#8e4191",
          name = "png",
        },
      },
    })
  end,
}
