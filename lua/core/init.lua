vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.termguicolors = true
vim.wo.relativenumber = true

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.o.timeout = true
vim.o.timeoutlen = 500

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.laststatus = 3

require("core.config.aliases")
require("core.config.mappings")

local lazy = require("lazy")

local config_directories = { "lsp", "nav", "ui", "utils", "custom" }

local function getConfigFiles()
  local files = {}

  local plugin_path = vim.fn.stdpath("config") .. "/lua/plugins"
  local plugin_contents = vim.fn.readdir(plugin_path)
  for _, item in ipairs(plugin_contents) do
    if item:match("%.lua$") then
      local config_name = item:match("(.+)%.lua$")
      table.insert(files, "plugins." .. config_name)
    end
  end

  for _, directory in ipairs(config_directories) do
    local script_path = vim.fn.stdpath("config") .. "/lua/core/plugins/" .. directory
    local dir_contents = vim.fn.readdir(script_path)
    for _, item in ipairs(dir_contents) do
      if item:match("%.lua$") then
        local config_name = item:match("(.+)%.lua$")
        table.insert(files, "core.plugins." .. directory .. "." .. config_name)
      end
    end
  end

  return files
end

local config_files = getConfigFiles()

local lazy_configurations = {}

for _, config_name in ipairs(config_files) do
  local config = require(config_name)
  table.insert(lazy_configurations, config)
end

table.insert(lazy_configurations, 1, require("core.plugins"))

lazy.setup(lazy_configurations)
