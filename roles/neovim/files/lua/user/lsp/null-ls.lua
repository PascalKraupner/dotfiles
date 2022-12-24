local null_ls = require("null-ls")

null_ls.setup({
temp_dir = "/tmp",
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.pint,
    null_ls.builtins.formatting.prettier.with(
      {
        extra_filetypes = { "astro" },
      }
    ),
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.phpstan.with({
      command = "vendor/bin/phpstan",
    }),
  },
  context_commentstring = {
    enable = true
  }
})
