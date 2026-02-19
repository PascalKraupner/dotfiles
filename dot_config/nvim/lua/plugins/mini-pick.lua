return {
  "nvim-mini/mini.pick",
  opts = {
    window = {
      config = function()
        local height = math.floor(vim.o.lines * 0.5)
        local width = math.floor(vim.o.columns * 0.6)
        return {
          anchor = "NW",
          height = height,
          width = width,
          row = math.floor((vim.o.lines - height) / 2),
          col = math.floor((vim.o.columns - width) / 2),
        }
      end,
    },
  },
}
