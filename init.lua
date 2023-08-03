-- Bootstrap lazy.nvim --

pcall(require, 'configs.preinit')

local lazy_utils = require 'utils.lazy'
lazy_utils.bootstrap()

local lazy = require 'lazy'
lazy.setup("plugins")

pcall(require, 'configs')
