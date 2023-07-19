-- Bootstrap lazy.nvim --

vim.g.mapleader = " "

local lazy_utils = require 'utils.lazy'
lazy_utils.bootstrap()

local lazy = require 'lazy'
lazy.setup("plugins")
