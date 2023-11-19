return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      volar = {
        filetypes = {
          "typescript",
          "javascript",
          "javascriptreact",
          "typescriptreact",
          "vue",
          "json",
        },
      },
    },
  },
}
