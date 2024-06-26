return {
  'aaronhallaert/advanced-git-search.nvim',
  config = function()
    -- optional: setup telescope before loading the extension
    require('telescope').setup {
      -- move this to the place where you call the telescope setup function
      extensions = {
        advanced_git_search = {
          -- See Config
        },
      },
    }

    vim.keymap.set('n', '<leader>gi', '<cmd>AdvancedGitSearch<CR>', { desc = 'Advanced Git search' })

    require('telescope').load_extension 'advanced_git_search'
  end,
}
