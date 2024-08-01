local lspconfig = require("lspconfig")

lspconfig.tsserver.setup {
  init_options = {
    preferences = {
      disableSuggestions = true, 
    }
  }
}
