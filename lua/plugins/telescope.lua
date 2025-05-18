---@class LazySpec
return {
  "nvim-telescope/telescope.nvim",
  name = 'telescope',
  dependencies = {
    { "polirritmico/telescope-lazy-plugins.nvim" },
    { "nvim-telescope/telescope-frecency.nvim", dependencies = { 'kkharji/sqlite.lua' } },
    "plenary"
  },
}
