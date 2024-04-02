local function setup()
  local null_ls = require("null-ls")

  null_ls.setup({
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.code_actions.eslint_d,
      null_ls.builtins.formatting.eslint_d,
      null_ls.builtins.diagnostics.rubocop,
      null_ls.builtins.formatting.rubocop,
      null_ls.builtins.formatting.prettierd,
    },
  })
end

return {
  "jose-elias-alvarez/null-ls.nvim",
  config = setup,
}
