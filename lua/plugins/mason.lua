return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = {} -- don’t auto-install anything; you use Nix
  end,
}
