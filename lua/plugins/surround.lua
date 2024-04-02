local function setup()
  require("nvim-surround").setup({})
end

return {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  config = setup,
}
