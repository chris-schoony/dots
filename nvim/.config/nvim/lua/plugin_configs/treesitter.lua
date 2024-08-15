return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'windwp/nvim-ts-autotag'
  },
  build = ":TSUpdate",
  opts = {
    auto_install = true,
    highlight = {
      enable = true
    },
    autotag = {
      enable = true
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end
}
