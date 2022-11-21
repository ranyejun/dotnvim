require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "sumneko_lua",
    "rust_analyzer",
    "pyright",
    "jdtls",
    "tsserver",
    "bashls",
    "dockerls",
    "eslint",
    "gradle_ls",
    "html",
    "sqlls",
    "taplo",
    "lemminx",
    "yamlls",
  }
})

