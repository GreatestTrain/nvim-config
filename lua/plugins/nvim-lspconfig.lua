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
  vim.lsp.config('*', { capabilities = cmp_capabilities } )
  for server_name, server_conf in pairs(opts) do
      -- lspconfig[server[1]].setup(vim.tbl_extend("keep", {capabilities = cmp_capabilities}, server))
      if next(server_conf) ~= nil then
        vim.lsp.config(server_name, server_conf)
      end
      vim.lsp.enable(server_name)
  end
end
m.opts		= require 'config.nvim-lspconfig' or nil

return m
