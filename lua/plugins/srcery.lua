---@class LazySpec
return {
  'srcery-colors/srcery-vim',
  dependencies = { { 'kien/rainbow_parentheses.vim', name = 'rainbow_parentheses' } },
  priority = 1000,
  name = 'srcery',
  config = function ()
    vim.g.srcery_inverse_match_paren = false
    vim.cmd.colorscheme 'srcery'
  end
}
