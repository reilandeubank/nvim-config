return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- Disable auto_install since we use Nix-provided parsers
      auto_install = false,
      -- Ensure parsers are not managed by lazy.nvim
      ensure_installed = {},
    },
  },
}
