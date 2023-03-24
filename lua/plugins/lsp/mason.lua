require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
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

require("mason-null-ls").setup({
    ensure_installed = {
    "stylua",
    "jq",
    "spell",
    "gitsigns",
    "luasnip",
    "tags",
    "fish",
    "vale",
    "blue",
    "sql_formatter",
    "cfn_lint",
    "prettier",
  }
})

