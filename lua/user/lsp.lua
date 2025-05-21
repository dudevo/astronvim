local lspconfig = require "lspconfig"

lspconfig.angularls.setup {
  cmd = { "ngserver", "--stdio" },
  on_attach = require("astronvim.utils.lsp").on_attach,
  capabilities = require("astronvim.utils.lsp").capabilities,
  root_dir = lspconfig.util.root_pattern("angular.json", ".git"),
}
