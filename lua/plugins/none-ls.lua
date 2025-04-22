return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
    local eslint_d = require("none-ls.diagnostics.eslint_d")
    local eslint_d_code = require("none-ls.code_actions.eslint_d")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
        eslint_d,
        eslint_d_code
				-- require("null-ls.diagnostics.eslint_d"),
			},
		})
		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
	end,
}
