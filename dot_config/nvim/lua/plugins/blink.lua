return {
  {
    "saghen/blink.compat",
    lazy = true,
    version = "*",
  },
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "obsidian", "obsidian_new", "obsidian_tags" },
        providers = {
          obsidian = {
            name = "obsidian",
            module = "blink.compat.source",
            opts = { name = "obsidian" },
          },
          obsidian_new = {
            name = "obsidian_new",
            module = "blink.compat.source",
            opts = { name = "obsidian_new" },
          },
          obsidian_tags = {
            name = "obsidian_tags",
            module = "blink.compat.source",
            opts = { name = "obsidian_tags" },
          },
        },
      },
    },
  },
}
