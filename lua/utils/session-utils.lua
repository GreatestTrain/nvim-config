function session_picker()
  local Path = require("plenary.path")
  local scan = require("plenary.scandir")
  local cwd = vim.fn.getcwd()

  -- Find all session.vim files recursively in the current dir
  local results = scan.scan_dir(cwd, {
    hidden = true,
    depth = 5,
    search_pattern = "session%.vim$",
  })

  local pickers = require("telescope.pickers")
  local finders = require("telescope.finders")
  local conf = require("telescope.config").values
  local actions = require("telescope.actions")
  local action_state = require("telescope.actions.state")

  pickers.new({}, {
    prompt_title = "Restore Session",
    finder = finders.new_table {
      results = results,
      entry_maker = function(entry)
        return {
          value = entry,
          display = Path:new(entry):make_relative(cwd),
          ordinal = entry
        }
      end
    },
    sorter = conf.generic_sorter({}),
    attach_mappings = function(_, map)
      actions.select_default:replace(function()
        actions.close()
        local selection = action_state.get_selected_entry()
        vim.cmd("source " .. vim.fn.fnameescape(selection.value))
        print("✅ Loaded session: " .. selection.display)
      end)
      return true
    end,
  }):find()
end

return session_picker
