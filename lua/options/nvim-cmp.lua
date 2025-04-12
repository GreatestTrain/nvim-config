local opt = function()
  local cmp = require 'cmp'
  return {

    {
      enabled = function()
        local disabled = false
        disabled = disabled or (vim.api.nvim_get_option_value('buftype', { buf = 0 }) == 'prompt')
        disabled = disabled or (vim.fn.reg_recording() ~= '')
        disabled = disabled or (vim.fn.reg_executing() ~= '')
        disabled = disabled or require('cmp.config.context').in_treesitter_capture('comment')
        return not disabled
      end,
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' }
      })
    },

    cmdline = {
      ["/"] = {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      },
      [":"] = {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' },
          { name = 'cmdline' },
        }),
        matching = { disallow_symbol_nonprefix_matching = false }
      }
    }

  }
end

return opt
