
lvim.builtin.which_key.mappings.e = {
    name = "Exprlorer",
    t = { "<cmd>NvimTreeToggle<CR>", "Toggle Explorer" },
    f = { "<cmd>NvimTreeFocus<CR>", "Focus Explorer" }
}

lvim.builtin.which_key.mappings.s.t = { 
  require('telescope').extensions.live_grep_args.live_grep_args, "Live grep args"
}


