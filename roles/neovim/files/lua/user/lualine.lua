local options = { theme = 'ayu_mirage'}
local ayu_mirage = require'lualine.themes.ayu'
ayu_mirage.normal.c.bg = "yellow"
require('lualine').setup({options, sections = {
  lualine_c = {
    {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
    }
  }
}})
