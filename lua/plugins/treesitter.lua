local function setup()
  require('nvim-treesitter.configs').setup({
    auto_install = true,
    highlight = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        itit_selection = "<leader>gnn",
        node_incremental = "<leader>grn",
        scope_incremental = "<leader>grc",
        node_decremental = "<leader>grm",
      }
    },
    indent = {
      enable = true
    }
  })
end

return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = setup
}
