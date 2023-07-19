local M = {}

M[1] = "folke/which-key.nvim"
M.config = function(lp, opts)
	wk = require("which-key")
	wk.register(opts)
end

-- M.opts = require "configs.ui.which-key" -- not working -- fix config.ui.which-key

return M
