local servers = {
  cssls = {},
  html = {},
  emmet_ls = {},
  tsserver = {},
  ruby_lsp = {},
  rubocop = {},
  eslint = {
    on_attach = function()
      vim.api.nvim_set_keymap("n", "<Leader>ef", ":EslintFixAll<CR>", { noremap = true, silent = true })
    end,
  },
  lua_ls = {
    settings = {
      Lua = {
        runtime = { version = "LuaJIT" },
        workspace = {
          checkThirdParty = false,
          library = {
            "${3rd}/luv/library",
          },
        },
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },
  jsonls = {
    settings = {
      json = {
        validate = { enable = true },
        format = { enable = true },
        schemas = require("schemastore").json.schemas(),
      },
    },
  },
}

return servers
