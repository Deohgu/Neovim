return {
  'tpope/vim-surround',
  event = 'VeryLazy',
  keys = {

    -- Normal mode mappings
    {
      '<leader>sa',
      function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Plug>Ysurround', true, true, true), 'n', true)
      end,
      mode = 'n', -- Normal mode
      desc = 'Add surrounding',
    },
    {
      '<leader>sc',
      function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Plug>Csurround', true, true, true), 'n', true)
      end,
      mode = 'n', -- Normal mode
      desc = 'Change surrounding',
    },
    {
      '<leader>sd',
      function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Plug>Dsurround', true, true, true), 'n', true)
      end,
      mode = 'n', -- Normal mode
      desc = 'Delete surrounding',
    },
    -- Additional normal mode mappings...

    -- Visual mode mappings
    {
      '<leader>sa',
      function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Plug>VSurround', true, true, true), 'v', true)
      end,
      mode = 'v', -- Visual mode
      desc = 'Visual mode surround',
    },
    {
      '<leader>sg',
      function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Plug>VgSurround', true, true, true), 'v', true)
      end,
      mode = 'v', -- Visual mode
      desc = 'Visual mode surround (line)',
    },
  },
  config = function()
    -- Additional plugin-specific configurations can go here
  end,
}
