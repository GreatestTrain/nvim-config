local ok, opts = pcall(require, 'options.nvim-cmp')

---@class LazySpec
local m = {}

m[1] = "hrsh7th/nvim-cmp"
m.name = "cmp"
m.event = { 'InsertEnter', 'CmdlineEnter' }
m.dependencies = {
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "kdheepak/cmp-latex-symbols",
  "Arkissa/cmp-agda-symbols",
  "aspeddro/cmp-pandoc.nvim",
  { "rcarriga/cmp-dap", dependencies = "nvim-dap" },
  "luasnip",
  "nvim-autopairs",
  "lazydev",
}

m.opts = ok and opts or {}

m.config = function(plugin, o)
  local cmp = require(plugin.name)
  if next(o) ~= nil then
    cmp.setup(o[1])
    cmp.setup.cmdline(':', o.cmdline[":"])
    cmp.setup.cmdline({ '/', '?' }, o.cmdline["/"])
  end

  -- cmp.setup.filetype("lua", )

  local cmp_autopairs = require 'nvim-autopairs.completion.cmp'

  cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
  )
end

return m
