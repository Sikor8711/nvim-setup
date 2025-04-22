vim.keymap.set("n", "<leader>o", "o<ESC>", {})
vim.keymap.set("n", "<leader>O", "O<ESC>", {})
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
-- place this in one of your configuration file(s)
local hop = require("hop")

vim.keymap.set("", "f", function()
	hop.hint_char1()
end, { remap = true })

