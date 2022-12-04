require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "sumneko_lua",
    "intelephense",
    "html",
    "jsonls",
    "tsserver",
    "volar",
  },
})

require('mason-tool-installer').setup {
  ensure_installed = {
    'prettier',
    'emmet-ls'
  }
}

local lspconfig = require("lspconfig")

local opts = {
  on_attach = require("user.lsp.handlers").on_attach,
  capabilities = require("user.lsp.handlers").capabilities,
}

require("mason-lspconfig").setup_handlers {
  function(server_name)
    local require_ok, server = pcall(require, "user.lsp.settings." .. server_name)
    if require_ok then
      opts = vim.tbl_deep_extend("force", server, opts)
    end

    lspconfig[server_name].setup(opts)
  end,
}
