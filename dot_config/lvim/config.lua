-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

--  set rtp+=/opt/homebrew/opt/fzf

vim.opt.colorcolumn = '80' -- Line lenght marker at 80 columns
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.conceallevel = 1
vim.opt.cursorcolumn = true
vim.opt.linebreak = true   -- Wrap on word boundary
vim.opt.relativenumber = true
vim.opt.rtp:append('/opt/homebrew/opt/fzf')

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "hydra_lsp" })
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })



lvim.plugins = {
  { import = 'plugins' },
  -- 'mg979/vim-visual-multi',
}



lvim.transparent_window = true
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.telescope.theme = ""
require("telescope").load_extension("live_grep_args")


require("user.springboot-gradle")
require("user.js-dap")
require("user.lualine")
require("user.whichkey")
require("user.theme")
require("user.ls_emmet")

