return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = {
		sections = {
			lualine_c = {
				{
					"filename",
					path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
				},
			},
		},
		options = {
			component_separators = "|",
			section_separators = { left = "", right = "" },
		},
	},
}
