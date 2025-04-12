local ok1, opts = pcall(require, 'options.which-key')

return {
  "folke/which-key.nvim",
  name = 'which-key',
  opts = ok1 and opts or {},
}
