---@module 'plugin_spec'

---@type Plugin
local M = {}

M[1] = 'nvim-treesitter/nvim-treesitter'
M.name = 'treesitter'
M.build = function ()
	vim.cmd [[:TSUpdate]]
end

M.opts = {
	ensure_installed = { 'awk', 'bash', 'comment', 'c', 'cpp', 'bibtex', 'latex', 'lua', 'python', 'cmake', 'make', 'markdown', 'markdown_inline', 'mermaid', 'nix', 'perl', 'rust', 'regex', 'ninja', 'json', 'toml' }
}

M.config = function (plugin)
	local conf = require 'nvim-treesitter.configs'
	conf.setup(plugin.opts)
end

return M
