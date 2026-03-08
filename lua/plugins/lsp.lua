return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      nil_ls = {
        mason = false,
        settings = {
          ["nil"] = {
            formatting = { command = { "alejandra" } },
          },
        },
      },

      lua_ls = {
        mason = false,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
          },
        },
      },

      ruff = { mason = false },
      vtsls = { mason = false },
    },
  },
}
