local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-d>", ":Bdelete<CR>", opts)

-- Harpoon
keymap("n", "<C-a>", function()
	require("harpoon.mark").add_file()
end, opts)

keymap("n", "<C-e>", function()
	require("harpoon.ui").toggle_quick_menu()
end, opts)

keymap("n", "<C-h>", function()
	require("harpoon.ui").nav_file(1)
end, opts)
keymap("n", "<C-t>", function()
	require("harpoon.ui").nav_file(2)
end, opts)
keymap("n", "<C-n>", function()
	require("harpoon.ui").nav_file(3)
end, opts)
keymap("n", "<C-s>", function()
	require("harpoon.ui").nav_file(4)
end, opts)

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Git
keymap("n", "<leader>gb", "<cmd> Gitsigns toggle_current_line_blame<CR>")
