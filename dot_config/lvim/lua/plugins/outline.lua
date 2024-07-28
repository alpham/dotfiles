return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = {   -- Example mapping to toggle outline
    { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    { "<leader>of", "<cmd>OutlineFocus<CR>", desc = "Toggle outline" },
  },
  opts = {
    width=50
    -- Your setup opts here
  },
}
