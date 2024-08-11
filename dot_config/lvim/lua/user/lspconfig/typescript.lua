local lspconfig = require("lspconfig")
local lvim_lsp = require("lvim.lsp")

local common_capabilities = lvim_lsp.common_capabilities()
local common_on_attach = lvim_lsp.common_on_attach


lspconfig.tsserver.setup {
  server = {
    rood_dir = require('lspconfig.util').root_pattern('.git'),
    capabilities = common_capabilities,
    on_attach = common_on_attach,
  },
  init_options = {
    preferences = {
      disableSuggestions = true, 
    }
  }
}
