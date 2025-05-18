local m = {}

_G.neo_tree_was_open = false

vim.api.nvim_create_autocmd("User", {
  pattern = "SaveSessionPre",
  callback = function() end,
})
vim.api.nvim_create_autocmd("User", {
  pattern = "SaveSessionPost",
  callback = function() end,
})


vim.api.nvim_create_autocmd(
  {'User'},
  {
    pattern = { 'SaveSessionPre' },
    callback = function()
      local neotree = require 'neo-tree'
      local bufs = vim.api.nvim_list_bufs()
      local check = false
      for _, b in ipairs(bufs) do
        local ft = vim.api.nvim_buf_get_option(b, 'filetype')
        if ft == 'neo-tree' then
          check = true
          vim.notify(check)
          break
        end
      end
      if check then
        _G.neo_tree_was_open = true
        neotree.close_all()
      end
    end
  }
)

vim.api.nvim_create_autocmd(
  {'User'},
  {
    pattern = { 'SaveSessionPost' },
    callback = function()
      local neotree = require 'neo-tree'
      if _G.neo_tree_was_open then
        neotree.show()
        _G.neo_tree_was_open = false
        -- vim.cmd [[ Neotree action=show source=last ]]
      end
    end
  }
)

vim.api.nvim_create_user_command("SaveSession", function()
  vim.api.nvim_exec_autocmds("User", { pattern = 'SaveSessionPre' })
  vim.cmd("mksession! Session.vim")
  vim.api.nvim_exec_autocmds("User", { pattern = 'SaveSessionPost' })
end, { desc = "Save session with pre/post hooks" })

-- Use Telescope to select and source a session
function m.pick_and_source_session()
  local finders = require("telescope.finders")
  local pickers = require("telescope.pickers")
  local actions = require("telescope.actions")
  local Path = require("plenary.path")
  local conf = require("telescope.config").values
  local action_state = require("telescope.actions.state")
  local dirs = m.find_sessions()
  if vim.tbl_isempty(dirs) then
    vim.notify("No Session.vim files found", vim.log.levels.WARN)
    return
  end

  pickers.new({}, {
    prompt_title = "Recent Sessions",
    finder = finders.new_table {
      results = dirs,
    },
    sorter = conf.generic_sorter({}),
    attach_mappings = function(_, _)
      actions.select_default:replace(function(prompt_bufnr)
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        if selection then
          local session = Path:new(selection[1], "Session.vim")
          vim.cmd("source " .. vim.fn.fnameescape(session:absolute()))
          vim.notify("Sourced: " .. session:absolute())
        end
      end)
      return true
    end,
  }):find()
end

return m
