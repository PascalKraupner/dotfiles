return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>on", "<cmd>ObsidianNew<cr>",          desc = "New Note" },
    { "<leader>oo", "<cmd>ObsidianOpen<cr>",         desc = "Open in Obsidian" },
    { "<leader>os", "<cmd>ObsidianSearch<cr>",       desc = "Search Notes" },
    { "<leader>oq", "<cmd>ObsidianQuickSwitch<cr>",  desc = "Quick Switch Note" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<cr>",    desc = "Backlinks" },
    { "<leader>ot", "<cmd>ObsidianTags<cr>",         desc = "Browse Tags" },
    { "<leader>od", "<cmd>ObsidianToday<cr>",        desc = "Today's Daily Note" },
    { "<leader>of", "<cmd>ObsidianFollowLink<cr>",   desc = "Follow Link" },
  },
  opts = {
    workspaces = {
      { name = "Notes", path = "~/Documents/Notes" },
    },
    picker = { name = "telescope.nvim" },
    completion = { nvim_cmp = true, min_chars = 2 },
    ui = { enable = true },
  },
}
