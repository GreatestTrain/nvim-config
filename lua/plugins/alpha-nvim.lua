return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'telescope' },
  config = function ()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.val = {
      '   ⠀⠀⠀⢀⣴⣾⣿⣿⣷⣶⣤⡀',
      '   ⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄',
      '   ⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧',
      '   ⠘⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿'
    }

    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("n", "  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    dashboard.section.footer.val = { "🚀 Ready to launch!" }
    dashboard.opts.opts.noautocmd = true

    alpha.setup(dashboard.opts)
  end
}
