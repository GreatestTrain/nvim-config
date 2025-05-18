---@class LazySpec
return {
  'L3MON4D3/LuaSnip',
  name = 'luasnip',
  build = vim.g.os == "Windows" and "make install_jsregexp SHELL=sh.exe .SHELLFLAGS=-c" or "make install_jsregexp"
}
