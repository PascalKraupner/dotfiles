return {
  'nvim-telescope/telescope.nvim',
 dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
       'nvim-telescope/telescope-ui-select.nvim' ,

  },
  config = function ()
    require('telescope').setup({
          extensions = {
            ['ui-select'] = {
              require('telescope.themes').get_dropdown(),
            },
          },
        })

    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')


    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind existing buffers' })
    vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]ind [R]esume' })
  end
  }
