local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.pint,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.phpstan.with({
      command = "vendor/bin/phpstan",
    }),
  },
  context_commentstring = {
    enable = true
  }
})
