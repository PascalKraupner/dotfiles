vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.termguicolors = true

opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.signcolumn = 'yes'

-- For concealing Markdown
opt.conceallevel = 1
