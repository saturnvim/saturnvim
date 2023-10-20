local lazy = require("lazy")

local config_directories = { "lsp", "navigation", "theme", "helpers", "debug", "other" }

local function getConfigFiles()
  local files = {}
  for _, directory in ipairs(config_directories) do
    local script_path = vim.fn.stdpath("config") .. "/lua/plugins/configs/" .. directory
    local dir_contents = vim.fn.readdir(script_path)
    for _, item in ipairs(dir_contents) do
      if item:match("%.lua$") then
        local config_name = item:match("(.+)%.lua$")
        table.insert(files, "plugins.configs." .. directory .. "." .. config_name)
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

table.insert(lazy_configurations, 1, require("plugins.core"))

lazy.setup(lazy_configurations)
