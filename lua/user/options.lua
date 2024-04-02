vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 5

vim.g.mapleader = " "

vim.o.colorcolumn = "81"
vim.o.foldmethod = "marker"

vim.o.splitright = true
vim.o.splitbelow = true

vim.opt.formatoptions:remove("c")
vim.opt.formatoptions:remove("r")
vim.opt.formatoptions:remove("o")

vim.o.wrap = true
vim.o.textwidth = 80

vim.o.undofile = true
