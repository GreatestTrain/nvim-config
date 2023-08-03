-- Before lazy is loaded
pcall(require, 'configs.preinit')

-- Bootstrap lazy.nvim --
local lazy_utils = require 'utils.lazy'
lazy_utils.bootstrap()

local lazy = require 'lazy'
lazy.setup("plugins")
