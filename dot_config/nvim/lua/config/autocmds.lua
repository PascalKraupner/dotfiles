-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Force transparent backgrounds on all UI elements
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local groups = {
      "Normal", "NormalNC", "NormalFloat",
      "FloatBorder", "FloatTitle",
      "SignColumn", "FoldColumn", "EndOfBuffer",
      "TabLine", "TabLineFill", "TabLineSel",
      "StatusLine", "StatusLineNC",
      "WinBar", "WinBarNC",
      "SnacksExplorer", "SnacksExplorerNormal", "SnacksExplorerWinBar",
      "SnacksPickerList", "SnacksPickerPreview", "SnacksPickerInput",
    }
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
    end

  end,
})
