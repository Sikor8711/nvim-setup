require("config.lazy")
require("lazy").setup("plugins")
require("vim-options")
require("generalkeymaps")

vim.o.termguicolors = true
vim.cmd.colorscheme("molokai")

