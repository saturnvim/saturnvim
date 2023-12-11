vim.cmd("command! -nargs=1 PluginManagerAdd lua AddPlugin(<f-args>)")
vim.cmd("command! -nargs=1 PluginManagerRemove lua RemovePlugin(<f-args>)")

function AddPlugin(plugin_name)
  vim.fn.system("echo $(curl https://raw.githubusercontent.com/saturnvim/plugins/main/" ..
    plugin_name .. "/init.lua) >> ~/.config/nvim/lua/core/plugins/custom/" .. plugin_name .. ".lua")

  print(plugin_name .. " installed! Restart your neovim!")
end

function RemovePlugin(plugin_name)
  vim.fn.system("rm -rf ~/.config/nvim/lua/core/plugins/custom/" .. plugin_name .. ".lua")

  print(plugin_name .. " removed! Restart your neovim!")
end
