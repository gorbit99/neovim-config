local function setup()
  local prettier = require("prettier")

  prettier.setup({
    bin = 'prettierd',
    filetypes = {
      "css",
      "graphql",
      "html",
      "javascript",
      "javascriptreact",
      "json",
      "less",
      "markdown",
      "scss",
      "typescript",
      "typescriptreact",
      "yaml",
      "vue"
    }
  })
end

return {
  "MunifTanjim/prettier.nvim",
  dependencies = {
    "nvimtools/none-ls.nvim",
  },
  config = setup,
}
