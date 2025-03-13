return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup({
      columns = {
        'icon',
        'size',
      },
      view_options = {
        show_hidden = true
      }
    })
    vim.api.nvim_set_keymap('n', '<leader>se', ':Oil --float<CR>', { noremap = true, silent = true })
  end
}
