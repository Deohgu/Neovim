return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    plugins = { spelling = true },
    delay = function()
      return 0
    end,
    defaults = {
      mode = { 'n', 'v' },
      ['g'] = { name = '+goto' },
      ['gs'] = { name = '+surround' },
      [']'] = { name = '+next' },
      ['['] = { name = '+prev' },
      ['<leader><tab>'] = { name = '+tabs' },
      ['<leader>b'] = { name = '+buffer' },
      ['<leader>c'] = { name = '+coc' },
      ['<leader>f'] = { name = '+file/find' },
      ['<leader>g'] = { name = '+git' },
      ['<leader>gx'] = { name = '+merge conflicts' },
      ['<leader>r'] = { name = '+replace' },
      ['<leader>s'] = { name = '+surround' },
      ['<leader>u'] = { name = '+ui' },
      ['<leader>w'] = { name = '+windows' },
      ['<leader>x'] = { name = '+diagnostics/quickfix' },
      ['<leader>d'] = { name = '+debugger' },
      ['<leader>p'] = { name = '+portal' },
    },
  },
  config = function(_, opts)
    local wk = require 'which-key'
    wk.setup(opts)
    wk.register(opts.defaults)

    vim.o.timeout = true
    vim.o.timeoutlen = 0
  end,
}
