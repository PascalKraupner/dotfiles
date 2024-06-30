return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		require("nvim-ts-autotag").setup()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			ensure_installed = {
				"json",
				"php",
				"twig",
				"vue",
				"go",
				"astro",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"c",
				"hyprlang",
			},
		})
	end,
}
