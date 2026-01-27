return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    opts = function()
      -- DAP is loaded by python extras but we use Nix-provided tools
      -- This ensures setup() exists even if DAP isn't fully configured
      return {}
    end,
  },
}
