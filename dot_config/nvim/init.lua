-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.colorcolumn = "80" -- Line lenght marker at 80 columns
-- vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.conceallevel = 1
vim.opt.cursorcolumn = true
vim.opt.linebreak = true -- Wrap on word boundary
vim.opt.relativenumber = true
-- vim.opt.winbar = "%=%m %f"   -- show current buffer relative path below bufferline

-- local alpha = require("alpha")
-- alpha.dashboard.section.header.val = {
--   "                                              ",
--   "  ██  ██  ████████  ████████  ██  ██  ██  ██  ",
--   "  ██  ██  ██              ██  ██  ██          ",
--   "  ██  ██  ██████████████████  ██  ██  ██████  ",
--   "  ██  ██                      ██  ██  ██  ██  ",
--   "  ██  ██  ██████  ██  ██████████  ██  ██████  ",
--   "  ██  ██  ██                      ██      ██  ",
--   "  ██  ██████████  ██  ██████  ██  ██████████  ",
--   "  ██  ██          ██      ██      ██          ",
--   "  ██████████  ██████  ██████  ██  ██  ██████  ",
--   "      ██  ██  ██              ██  ██  ██  ██  ",
--   "  ██  ██████  ██████  ██████████  ██  ██████  ",
--   "  ██              ██              ██      ██  ",
--   "  ██████████████████  ██████████████  ██████  ",
--   "                                              ",
-- }
