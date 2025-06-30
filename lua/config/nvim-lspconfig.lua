local m = {}

m['rust_analyzer'] = {}
m['ruff'] = {}
m['awk_ls'] = { cmd = { "npx", "awk-language-server" }, filetypes = { "awk" } }
m['bashls'] = {}
m['cmake'] = {}
m['clangd'] = {}
m['gdscript'] = {}
m['html'] = {}
m['java_language_server'] = {}
m['julials'] = {}
m['ltex'] = {}
m['lua_ls'] = { cmd = { "lua-language-server" }, filetypes = { "lua" } }
m['marksman'] = {}
m['nushell'] = {}
m['postgres_lsp'] = {}
m['jsonls'] = {}

return m
