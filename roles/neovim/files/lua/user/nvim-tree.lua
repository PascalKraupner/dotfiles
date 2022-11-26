require("nvim-tree").setup({
  view = {
    adaptive_size = false
  },
  renderer = {
    full_name = true,
    indent_width = 1
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})
