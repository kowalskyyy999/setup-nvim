local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"


lspconfig.clangd.setup ({
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
})

--lspconfig.rust_analyzer.setup({
  --on_attach = function(client, bufnr)
    --    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  --end,
  --capabilities = capabilities,
--})
