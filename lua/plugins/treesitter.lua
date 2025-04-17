return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      auto_install = true,
      ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html"},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
    vim.treesitter.language.register("html","mjml")
  end,
}
