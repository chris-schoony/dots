local servers = {
  cssls = {},
  html = {},
  emmet_ls = {},
  gopls = {},
  astro = {},
  tailwindcss = {},
  tsserver = {},
  mdx_analyzer = {},
  glsl_analyzer = {},
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
