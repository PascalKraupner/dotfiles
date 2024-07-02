return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")
		nvimtree.setup({
			view = {
				adaptive_size = false,
			},
			renderer = {
				full_name = true,
				indent_width = 1,
			},
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
			update_focused_file = {
				enable = true,
			},
		})
		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		local api = require("nvim-tree.api")
		local keymap = vim.keymap
		keymap.set("n", "<leader>e", function()
			api.tree.toggle()
		end, { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file}
	end,
}
