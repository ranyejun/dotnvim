local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	local opts = { noremap = true, silent = true }

	buf_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
	buf_set_keymap("n", "gl", ":lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "gI", ":lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
	buf_set_keymap("n", "gv", ":lua vim.diagnostic.open_float()<CR>", opts)
	buf_set_keymap("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", opts)
	buf_set_keymap("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", opts)
	buf_set_keymap("n", "gq", ":lua vim.diagnostic.setloclist()<CR>", opts)
  buf_set_keymap('n', 'gk', ":lua vim.lsp.buf.signature_help()<cr>", opts)
end

-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig")["rust_analyzer"].setup({
  border = {
    { "╭", "FloatBorder" },
      { "─", "FloatBorder" },
      { "╮", "FloatBorder" },
      { "│", "FloatBorder" },
      { "╯", "FloatBorder" },
      { "─", "FloatBorder" },
      { "╰", "FloatBorder" },
      { "│", "FloatBorder" },
    },
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["lua_ls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["pyright"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["jdtls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["tsserver"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["bashls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["dockerls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["eslint"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["gradle_ls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["html"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["sqlls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["taplo"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["lemminx"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
require("lspconfig")["yamlls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
