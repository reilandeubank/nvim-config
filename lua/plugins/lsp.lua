return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Pick one Nix language server; nixd is the newer one:
      nixd = {
        mason = false, -- use the system/nix-provided server
        settings = {
          nixd = {
            formatting = { command = { "alejandra" } },
          },
        },
      },
      -- If you prefer nil instead of nixd, use this and remove nixd:
      -- nil_ls = { mason = false },

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
      tsserver = { mason = false }, -- or switch to vtsls if you prefer
    },
  },
}
