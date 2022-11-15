local colorscheme = "tokyonight"


require("tokyonight").setup({
  transparent = true, -- Enable this to disable setting the background color
  styles = {
    sidebars = "transparent"
  },
})
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

