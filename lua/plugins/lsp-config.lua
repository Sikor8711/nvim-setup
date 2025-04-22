return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- Lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			-- TypeScript & JavaScript
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			-- Tailwind
			lspconfig.tailwindcss.setup({
				filetypes = { "css", "svelte" },
				capabilities = capabilities,
			})

			-- Emmet
			lspconfig.emmet_ls.setup({
				filetypes = { "html", "svelte", "mjml" },
				capabilities = capabilities,
			})

			-- HTML
			lspconfig.html.setup({
				filetypes = { "html", "mjml", "twig", "svelte" },
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				filetypes = { "css", "scss", "lcss", "html", "mjml", "twig", "svelte" },
				capabilities = capabilities,
			})

			lspconfig.svelte.setup({
				capabilities = capabilities,
			})

			-- Optional keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
