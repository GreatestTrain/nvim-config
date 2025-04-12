local m = {}

m[1] = "L3MON4D3/LuaSnip"
m.name = "luasnip"
m.build = vim.g.os == "Windows" and "make install_jsregexp SHELL=sh.exe .SHELLFLAGS=-c" or "make install_jsregexp"

return m
