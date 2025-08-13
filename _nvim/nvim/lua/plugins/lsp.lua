return {
  { "saghen/blink.cmp" },

  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable('jdtls')
      vim.lsp.enable('vtsls')
    end
  }
}
