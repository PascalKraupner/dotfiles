   return { 'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = "VeryLazy",
    opts = {
      options = {
        component_separators = '|',
        section_separators = { left = '', right = '' },
      },
    },
   }
