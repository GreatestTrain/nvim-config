---@class LazySpec
return {
  'glepnir/dashboard-nvim',
  name = 'dashboard',
  event = 'VimEnter',
  dependencies = { 'nvim-web-devicons', 'telescope' },
  opts = function(_, opts)
    local m = require 'utils.session'
    return {
      theme = 'doom',  -- You can choose any theme here
      config = {
        header = {},
        center = {
          -- Button for loading session
          {
            icon = '',
            desc = 'Load Session',
            action = function()
              m.pick_and_source_session()
            end
          },
          -- Button for finding files with Telescope
          {
            icon = '',
            desc = 'Find File',
            action = ':Telescope find_files<CR>'
          },
          -- Button for searching buffers
          {
            icon = '',
            desc = 'Search Buffers',
            action = ':Telescope buffers<CR>'
          },
          -- Button for searching recent files
          {
            icon = '',
            desc = 'Recent Files',
            action = ':Telescope oldfiles<CR>'
          },
          -- Button for Git Statu
          {
            icon = '',
            desc = 'Git Status',
            action = ':Telescope git_status<CR>'
          },
          -- Button for opening Neovim confi
          {
            icon = '',
            desc = '    > Edit Neovim Config',
            action = ':e $MYVIMRC<CR>'
          },
          -- Button for searching keymap
          {
            icon = '',
            desc = 'Search Keymaps',
            action = ':Telescope keymaps<CR>'
          },
          -- Button for opening help
          {
            icon = '',
            desc = 'Neovim Help',
            action = ':help<CR>'
          },
          -- Button for restarting Neovim
          {
            icon = '',
            desc = 'Restart Neovim',
            action = ':qa! | nvim<CR>'
          },
          -- Button for quitting Neovim
          {
            icon = '',
            desc = 'Quit',
            action = ':qa<CR>'
          },
        },
      },
    }
  end
}
