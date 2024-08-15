return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup({
      view_options = {
        show_hidden = true
      }
    })

    vim.api.nvim_set_keymap('n', '<leader>fe', ':Oil --float<CR>', { noremap = true, silent = true })
  end
}
