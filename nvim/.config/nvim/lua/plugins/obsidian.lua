return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	config = function()
		require("obsidian").setup({
			workspaces = {
				{
					name = "no-vault",
					path = function()
						return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
					end,
					overrides = {
						notes_subdir = vim.NIL, -- have to use 'vim.NIL' instead of 'nil'
						new_notes_location = "current_dir",
						templates = {
							subdir = vim.NIL,
						},
						disable_frontmatter = true,
					},
				},
				{
					name = "Notes",
					path = "~/Documents/Notes",
				},
			},
		})
	end,
}
