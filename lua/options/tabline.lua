function _G.tabline()
  local s = ''
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(bufnr) then
      local name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":t")
      if bufnr == vim.api.nvim_get_current_buf() then
        s = s .. '%#TabLineSel#' .. ' ' .. name .. ' '
      else
        s = s .. '%#TabLine#' .. ' ' .. name .. ' '
      end
    end
  end
  return s .. '%#TabLineFill#'
end

vim.o.tabline = '%!v:lua.my_tabline()'
vim.o.showtabline = 2
