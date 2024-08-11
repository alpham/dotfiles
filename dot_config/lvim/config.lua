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


lvim.plugins = {
  { import = 'plugins' },
}


lvim.transparent_window = true
lvim.builtin.nvimtree.setup.view.side = "right"


require("user.springboot-gradle")
require("user.lualine")
require("user.telescope")
require("user.whichkey")
require("user.theme")

