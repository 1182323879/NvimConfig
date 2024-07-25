return {
  'nvim-lualine/lualine.nvim',
  options = {
    theme = 'tokyonight',
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('lualine').setup()
  end,
}

