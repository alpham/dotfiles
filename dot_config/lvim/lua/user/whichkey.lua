lvim.builtin.which_key.mappings.e = {
  name = "Exprlorer",
  t = { "<cmd>NvimTreeToggle<CR>", "Toggle Explorer" },
  f = { "<cmd>NvimTreeFocus<CR>", "Focus Explorer" }
}

lvim.builtin.which_key.mappings.o = { -- Example mapping to toggle outline
  name = "Outline",
  t = { "<cmd>Outline<CR>", "Toggle outline" },
  f = { "<cmd>OutlineFocus<CR>", "Toggle outline" },
}

-- lvim.builtin.which_key.mappings["H"] = {
-- -- Hide side panel, this is a custom function
--   "<cmd>HideSidePanels<CR>", "Hide side-panels"
-- }

lvim.builtin.which_key.mappings.s.t = {
  require('telescope').extensions.live_grep_args.live_grep_args, "Live grep args"
}

lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose venv" }
}
