local ok, opts = pcall(require, 'options.which-key')

---@class LazySpec
return {
  "folke/which-key.nvim",
  name = 'which-key',
  priority = 1000,
  lazy = false,
  keys = require 'keybindings.default',
  opts = ok and opts or {},
  config = function(plug, o)
    local wk = require(plug.name)
    wk.setup(o)
    if type(plug.keys) == 'function' then
      wk.add(plug.keys())
    else
      wk.add(plug.keys)
    end
  end
}
