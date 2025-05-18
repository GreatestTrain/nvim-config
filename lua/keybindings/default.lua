local function m(_, _)
  return {
    { "<S-Tab>", ":tabprevious<CR>", desc = "Previous tab" },
    { "<Tab>", ":tabnext<CR>", desc = "Next tab" },
    { "<leader>b", group = "buffers" },
    { "<leader>bn", ":bnext<CR>", desc = "Next buffer" },
    { "<leader>bp", ":bprevious<CR>", desc = "Previous buffer" },
    { "<leader>bx", ":bdelete<CR>", desc = "Delete Buffer" },
    { "<leader>t", group = "tabs" },
    { "<leader>tx", ":tabclose<CR>", desc = "Close tab" },
    { "<leader>tn", ":tabnew<CR>", desc = "New tab" },
    { "<leader>x", ":bd<CR>", desc = "Close buffer" },
  }
end

return m
