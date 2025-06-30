---@class LazySpec
local m = {}

m[1] 		= "neovim/nvim-lspconfig"
-- m.dir 		= "/usr/share/nvim/site/pack/dist/start/lspconfig/"
m.name 		= "lspconfig"
m.dependencies = { "neoconf", "cmp", "mason" }
m.lazy 		= false
m.priority 	= 1000
m.config	= function (_, opts)
  local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- if vim.loop.os_uname() == "Windows_NT" then
  --   return
  -- end
  for server_name, server_conf in pairs(opts) do
    vim.lsp.config(server_name, vim.tbl_extend("force", server_conf, { capabilities = cmp_capabilities }))
    vim.lsp.enable(server_name)
  end
end
m.opts		= require 'config.nvim-lspconfig' or nil

return m
