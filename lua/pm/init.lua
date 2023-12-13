local utils = require("pm.utils")
local icons = require("icons")

vim.cmd("command! -nargs=1 PluginManagerAdd lua AddPlugin(<f-args>)")
vim.cmd("command! -nargs=1 PluginManagerRemove lua RemovePlugin(<f-args>)")

function AddPlugin(plugin_name)
  if string.find(plugin_name, "/") then
    print(icons["warn"] .. " This plugin is external to the saturnvim registry")

    vim.fn.system(
      "echo $(curl https://raw.githubusercontent.com/" ..
      plugin_name ..
      "/main/.svim/init.lua) >> ~/.config/nvim/lua/core/plugins/custom/" .. utils.format_name(plugin_name) .. ".lua"
    )
  else
    vim.fn.system("echo $(curl https://raw.githubusercontent.com/saturnvim/plugins/main/" ..
      plugin_name .. "/init.lua) >> ~/.config/nvim/lua/core/plugins/custom/" .. plugin_name .. ".lua")
  end

  print(icons["mark"] .. " " .. plugin_name .. " installed! Restart your neovim!")
end

function RemovePlugin(plugin_name)
  vim.fn.system("rm -rf ~/.config/nvim/lua/core/plugins/custom/" .. utils.format_name(plugin_name) .. ".lua")

  print(plugin_name .. " removed! Restart your neovim!")
end
