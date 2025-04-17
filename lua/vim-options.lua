vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.relativenumber = true
vim.wo.number = true
vim.o.numberwidth = 2
vim.opt.showmode = false
vim.g.mapleader = " "
vim.o.scrolloff = 7
vim.o.signcolumn = "yes"
vim.opt.undofile = true
vim.opt.mouse = 'a'
vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)
vim.filetype.add({extension = {mjml = "mjml",}})
