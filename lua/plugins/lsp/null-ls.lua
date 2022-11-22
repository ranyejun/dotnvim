local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.completion.spell,
    null_ls.builtins.completion.luasnip,
    null_ls.builtins.completion.tags,
    null_ls.builtins.diagnostics.fish,
    null_ls.builtins.diagnostics.vale,
    null_ls.builtins.diagnostics.cfn_lint,
    null_ls.builtins.formatting.blue,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.sql_formatter,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.jq,
  },
})
