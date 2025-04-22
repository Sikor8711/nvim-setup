return {
	{

		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				auto_install = true,
				ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html" },
				sync_install = false,
				highlight = { enable = true, additional_vim_regex_highlighting = true },
				indent = { enable = true },
				highlight_definitions = {
					enable = true,
					clear_on_cursor_move = true,
				},
			})
			vim.treesitter.language.register("html", "mjml")
		end,
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		event = "BufRead",
	},
}
