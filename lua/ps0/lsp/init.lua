local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "ps0.lsp.mason"
require("ps0.lsp.handlers").setup()
require "ps0.lsp.null-ls"
require "ps0.lsp.emmet-config"
