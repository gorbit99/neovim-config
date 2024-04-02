local function setup()
  vim.keymap.set("n", "<leader>tt", ":FloatermToggle<CR>", { silent = true })
  vim.keymap.set("n", "<leader>to", ":FloatermNew<CR>", { silent = true })
  vim.keymap.set("n", "<leader>tn", ":FloatermNext<CR>", { silent = true })
  vim.keymap.set("n", "<leader>tp", ":FloatermPrev<CR>", { silent = true })
  vim.keymap.set("t", "<C-x><Esc>", "<C-\\><C-n>", { silent = true })

  vim.g.floaterm_autoinsert = false
end

return {
  "voldikss/vim-floaterm",
  config = setup,
}
