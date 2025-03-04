return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'rafamadriz/friendly-snippets',
    'onsails/lspkind.nvim',
    'hrsh7th/cmp-path',
  },
  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    local lspkind = require('lspkind')
    require('luasnip.loaders.from_vscode').lazy_load()
    luasnip.config.setup {}

    luasnip.filetype_extend('javascriptreact', { 'html' })
    luasnip.filetype_extend('typescript', { 'javascript' })
    luasnip.filetype_extend('typescriptreact', { 'html', 'javascript' })

    cmp.event:on(
      'confirm_done'
    )

    cmp.setup {
      preselect = cmp.PreselectMode.None,
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete {},
        ['<C-y>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        }),
        ['<C-l>'] = cmp.mapping(function(fallback)
          if luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<C-h>'] = cmp.mapping(function(fallback)
          if luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),
      },
      formatting = {
        format = lspkind.cmp_format({
          with_text = true,
          maxwidth = 50
        })
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
      },
    }
  end
}
