local M = {}

M['mappings'] = require 'configs.mappings'

function M.setup()
	for _, config in pairs(M) do
		if type(config) == "table" then
			config.setup()
		end
	end
end

if vim.g.neovide then
	vim.o.guifont = "CaskaydiaCove Nerd Font:h12,Noto_Color_Emoji:h12:b"
	vim.g.neovide_confirm_quit = true
	vim.g.neovide_remember_window_size = true
	vim.api.nvim_set_keymap("c", "<S-Insert>",  "<C-R>+", { silent = true })
end

return M
