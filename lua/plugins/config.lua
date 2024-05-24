return {
  { "williamboman/mason-lspconfig.nvim", enabled = true },
  { "williamboman/mason.nvim", enabled = true },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        svelte = {},
        tsserver = {},
      },
    },
  },
}
