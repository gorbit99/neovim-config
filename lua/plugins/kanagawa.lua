return {
  "rebelot/kanagawa.nvim",
  config = function() 
    require('kanagawa').setup({
      compile = true,
      theme = "dragon",
      dimInactive = true,
    })
    vim.cmd("colorscheme kanagawa")
  end
}
