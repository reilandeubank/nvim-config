return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Disable vim filetype highlighting to avoid parser version mismatch
      -- This fixes the "Invalid node type 'tab'" error with Neovim 0.11.5
      opts.highlight = opts.highlight or {}
      opts.highlight.disable = opts.highlight.disable or {}
      table.insert(opts.highlight.disable, "vim")
      
      -- Also disable for query files
      table.insert(opts.highlight.disable, "query")
    end,
  },
  {
    "folke/noice.nvim",
    optional = true,
    opts = {
      presets = {
        bottom_search = false,
        command_palette = false,
      },
    },
  },
}
