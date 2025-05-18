---@class LazySpec
return {
	"scottmckendry/cyberdream.nvim",
	name="cyberdream",
    lazy = false,
    priority = 1000,
	init=function()
		vim.opt.termguicolors = true
		vim.cmd.colorscheme 'cyberdream'
	end,

    opts = {
      transparent = true,
      terminal_colors = true,
      cache = true,
    }
}
