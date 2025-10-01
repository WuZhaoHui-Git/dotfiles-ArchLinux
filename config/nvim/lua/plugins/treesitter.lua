-- 代码高亮
return {
  {
    "https://gh-proxy.com/https://github.com/nvim-treesitter/nvim-treesitter",
    name = "treesitter",
    main = "nvim-treesitter.configs",
    opts = {
      auto_install = true,
      ensure_installed = { "c", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    },
    opts_extend = { "ensure_installed" },
  },
}