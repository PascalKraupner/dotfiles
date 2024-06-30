return {
	"lewis6991/gitsigns.nvim",
	config = function()
		vim.keymap.set("n", "<leader>gb", "<cmd> Gitsigns toggle_current_line_blame<CR>")
		require("gitsigns").setup()
	end,
}
