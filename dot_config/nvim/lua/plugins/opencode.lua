-- opencode.nvim — Minimal setup for integrating the opencode CLI with Neovim
--
-- Usage (quick start):
-- - :OpencodePrompt            Send a prompt directly (supports [range])
-- - require("opencode").ask()    Open input to ask opencode with context
-- - require("opencode").select() Show all actions (prompts, commands, etc.)
-- - require("opencode").toggle() Toggle the opencode TUI/terminal
-- - require("opencode").prompt("@this") Send the current selection/cursor context
--
-- Keymaps added (minimal, non-invasive):
-- - <leader>oa (n/x): Ask opencode with "@this" and submit immediately
-- - <leader>os (n/x): Open opencode action selector
-- - <leader>oo (n/x): Send "@this" via prompt (review/explain/improve, etc.)
-- - <leader>ot (n/t): Toggle opencode terminal/TUI
--
-- Notes:
-- - "@this" expands to the visual selection if active, otherwise the cursor position.
-- - Snacks (dependency) provides the terminal used by toggle() by default.
-- - After installing, run :checkhealth opencode for diagnostics.

return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for ask()/select(); required for toggle() by default.
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    -- Configure as needed; defaults are sensible. See lua/opencode/config.lua in the plugin.
    vim.g.opencode_opts = vim.g.opencode_opts or {}

    -- Required for auto-reload on edits made by opencode
    vim.o.autoread = true

    -- Minimal, leader-based keymaps to avoid conflicts with <C-a>/<C-x>
    local map = vim.keymap.set

    map({ "n", "x" }, "<leader>oa", function()
      require("opencode").ask("@this: ", { submit = true })
    end, { desc = "opencode ask @this" })

    map({ "n", "x" }, "<leader>os", function()
      require("opencode").select()
    end, { desc = "opencode select" })

    map({ "n", "x" }, "<leader>oo", function()
      require("opencode").prompt("@this")
    end, { desc = "opencode prompt @this" })

    map({ "n", "t" }, "<leader>ot", function()
      require("opencode").toggle()
    end, { desc = "opencode toggle" })
  end,
}
