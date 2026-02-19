return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  cmd = {
    "ObsidianNew",
    "ObsidianOpen",
    "ObsidianSearch",
    "ObsidianQuickSwitch",
    "ObsidianBacklinks",
    "ObsidianTags",
    "ObsidianToday",
    "ObsidianFollowLink",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "saghen/blink.cmp",
    "nvim-mini/mini.pick",
  },
  keys = {
    { "<leader>on", "<cmd>ObsidianNew<cr>",         desc = "New Note" },
    { "<leader>oo", "<cmd>ObsidianOpen<cr>",        desc = "Open in Obsidian" },
    { "<leader>os", "<cmd>ObsidianSearch<cr>",      desc = "Search Notes" },
    { "<leader>oq", "<cmd>ObsidianQuickSwitch<cr>", desc = "Quick Switch Note" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<cr>",   desc = "Backlinks" },
    { "<leader>ot", "<cmd>ObsidianTags<cr>",        desc = "Browse Tags" },
    { "<leader>od", "<cmd>ObsidianToday<cr>",       desc = "Today's Daily Note" },
    { "<leader>of", "<cmd>ObsidianFollowLink<cr>",  desc = "Follow Link" },
  },
  opts = {
    workspaces = {
      { name = "Notes", path = "~/Documents/Notes" },
    },
    picker = { name = "mini.pick" },
    completion = {
      nvim_cmp = false,
      blink_cmp = true,
      min_chars = 2,
    },
    ui = { enable = true },
    disable_frontmatter = true,
    note_id_func = function(title)
      if title ~= nil then
        return title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        local suffix = ""
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
        return tostring(os.time()) .. "-" .. suffix
      end
    end,
  },
}
