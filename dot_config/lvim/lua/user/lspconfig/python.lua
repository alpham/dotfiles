local formatters = require('lvim.lsp.null-ls.formatters')
formatters.setup { { name = "black" } }

local linters = require('lvim.lsp.null-ls.linters')
linters.setup { { command = 'flake8', args = { '--ignore=E203' }, filetypes = { 'python' } } }

local lspconfig = require("lspconfig")
local lvim_lsp = require("lvim.lsp")

local common_capabilities = lvim_lsp.common_capabilities()
local common_on_attach = lvim_lsp.common_on_attach

lspconfig.pyright.setup {
  server = {
    rood_dir = require('lspconfig.util').root_pattern('.git'),
    capabilities = common_capabilities,
    on_attach = common_on_attach,
  },
  single_file_support = true,
  settings = {
    pyright = {
      disableLanguageServices = false,
      disableOrganizeImports = false
    },
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace", -- openFilesOnly, workspace
        typeCheckingMode = "basic",   -- off, basic, strict
        useLibraryCodeForTypes = true
      }
    }
  },
}
