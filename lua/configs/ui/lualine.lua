local get_lsp_status = function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
end

local config = {

options = {
	icons_enabled = true,
	theme = 'auto',
	disabled_filetypes = { 'lazy', 'neo-tree' },
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'filename'},
		lualine_c = { 'diff', {get_lsp_status, icon = '', color = { fg = '#ffffff', gui = 'bold' },} },
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	  },
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
}
}

return config
