return {
  "folke/snacks.nvim",
  ---@module 'snacks'
  ---@type snacks.Config
  opts = {
    picker = {
      previewers = {
        diff = {
          builtin = false, -- use Neovim for previewing diffs (true) or use an external tool (false)
          cmd = { "delta" }, -- example to show a diff with delta
        },
        git = {
          builtin = false, -- use Neovim for previewing git output (true) or use git (false)
          args = {}, -- additional arguments passed to the git command. Useful to set pager options using `-c ...`
        },
      },
      sources = {
        spelling = {
          layout = { preset = "select" },
        },
      },
      win = {
        input = {
          keys = {
            ["<Esc>"] = { "close", mode = { "i", "n" }, expr = true },
            ["<A-k>"] = { "history_back", mode = { "n", "i" } },
            ["<A-j>"] = {
              "history_forward",
              mode = { "n", "i" },
            },
            ["<C-u>"] = {
              "list_scroll_up",
              mode = { "n", "i" },
            },
            ["<C-d>"] = {
              "list_scroll_down",
              mode = { "n", "i" },
            },
            ["<A-u>"] = {
              "preview_scroll_up",
              mode = { "n", "i" },
            },
            ["<A-d>"] = {
              "preview_scroll_down",
              mode = { "n", "i" },
            },
          },
        },
      },
      layout = {
        preset = "telescope",
      },
    },
  },
}
