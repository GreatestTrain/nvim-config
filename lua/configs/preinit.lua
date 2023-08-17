-- Vim options
-- For options see `:help options`
-- For globals see `:help g:`

vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.number = true
vim.o.list = true
vim.o.splitright = true
vim.o.diffopt = "vertical,filler,internal,closeoff"
vim.o.sessionoptions = "tabpages,winsize,help,terminal"
vim.o.updatetime = 1500

-- vim.api.nvim_create_autocmd({'CursorHold'}, {
-- 	callback = vim.lsp.buf.hover
-- })
