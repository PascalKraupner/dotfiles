vim.filetype.add({
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

local opt = vim.opt

-- DISPLAY OPTIONS
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.termguicolors = true -- Enable 24-bit RGB color in the TUI
opt.wrap = false -- Display lines as one long line
opt.colorcolumn = "100" -- Highlight column at 100th character
opt.signcolumn = "yes" -- Always show the sign column
opt.conceallevel = 1 -- For concealing Markdown

-- CLIPBOARD
opt.clipboard = "unnamedplus" -- Use system clipboard

-- INDENTATION
opt.smartindent = true -- Enable smart indentation
opt.autoindent = true -- Enable automatic indentation
opt.shiftwidth = 2 -- Number of spaces for each indentation level
opt.tabstop = 2 -- Number of spaces a tab character represents
opt.expandtab = true -- Convert tabs to spaces

-- PERFORMANCE
opt.updatetime = 50 -- Faster completion (default is 4000ms)

-- FILE MANAGEMENT
opt.swapfile = false -- Disable swap file
opt.backup = false -- Disable backup file
opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Set undo directory
opt.undofile = true -- Enable persistent undo

-- SEARCHING
opt.hlsearch = false -- Disable highlight on search
