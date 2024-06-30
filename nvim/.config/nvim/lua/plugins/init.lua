return {
	"nvim-lua/plenary.nvim",
	"leafOfTree/vim-matchtag",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
}
