return {
	"savq/melange-nvim",
	name="melange",
	init=function()
		vim.opt.termguicolors = true
		vim.cmd.colorscheme 'melange'
	end
}
