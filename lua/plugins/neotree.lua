-- plugins/neotree.lua
---@class LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = require 'keybindings.neo-tree',
  branch = "v2.x",
  dependencies = {
    "plenary",
    "nvim-web-devicons",
    "nui"
  },
  lazy = false,
  ---@module "neo-tree"
  ---@type neo-tree.Config?
  opts = {},

  init = function()
    -- Define a global variable to track NeoTree state

    require 'utils.session'


  end
}
