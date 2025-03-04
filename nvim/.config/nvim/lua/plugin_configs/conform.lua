return {
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = {
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      css = { 'prettier' },
      html = { 'prettier' },
      javascript = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
      json = { 'prettier' },
      ruby = { 'rubocop' }
    },
  },
}
