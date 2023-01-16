local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig.eslint.setup()

