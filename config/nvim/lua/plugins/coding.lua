return {
  -- 文档地址 https://cmp.saghen.dev/configuration/reference.html
  {
    "saghen/blink.cmp",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = "super-tab", ["<C-y>"] = false },
      completion = {
        list = {
          selection = {
            auto_insert = false,
          },
        },
        trigger = {
          show_in_snippet = false,
        },
      },
      -- 模糊匹配器
      fuzzy = {
        implementation = "prefer_rust",
        sorts = {
          "exact", -- 精确文本匹配
          "score", -- 模糊文本匹配
          "sort_text", -- 通过 依赖源/Lsp 匹配
        },
      },
    },
    keys = {
      { "<C-y>", false },
    },
  },
  -- 自动闭包括号
  {
    "nvim-mini/mini.pairs",
    opts = {
      mappings = {
        ["《"] = { action = "open", pair = "《》", neigh_pattern = "[^\\]." },
        ["》"] = { action = "close", pair = "《》", neigh_pattern = "[^\\]." },
      },
    },
  },
  -- 注释内容
  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    keys = {
      { "<A-/>", "<Cmd>normal gcc<CR><CR>", mode = "n", { desc = "Toggle comment line" } },
      { "<A-/>", "<Esc><Esc><Cmd>normal gcc<CR>", mode = "i", { desc = "Toggle comment line" } },
      { "<A-/>", "<Cmd>visual gc<CR>", mode = "v", { desc = "Toggle comment line" } },
    },
  },
  -- 多光标编辑
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    event = "BufReadPost",
    keys = {
      {
        "I",
        function()
          require("multicursor-nvim").insertVisual()
        end,
        mode = "x",
        desc = "Insert cursors at visual selection",
      },
      {
        "A",
        function()
          require("multicursor-nvim").appendVisual()
        end,
        mode = "x",
        desc = "Append cursors at visual selection",
      },
      -- 在主光标 上/下一行 添加/跳过 光标
      {
        "<C-up>",
        function()
          require("multicursor-nvim").lineAddCursor(-1)
        end,
        mode = { "n", "x" },
        desc = "Add cursor above the main cursor",
      },
      {
        "<C-down>",
        function()
          require("multicursor-nvim").lineAddCursor(1)
        end,
        mode = { "n", "x" },
        desc = "Add cursor below the main cursor",
      },
      {
        "<C-S-up>",
        function()
          require("multicursor-nvim").lineSkipCursor(-1)
        end,
        mode = { "n", "x" },
        desc = "Skip cursor above the main cursor",
      },
      {
        "<C-S-down>",
        function()
          require("multicursor-nvim").lineSkipCursor(1)
        end,
        mode = { "n", "x" },
        desc = "Skip cursor below the main cursor",
      },
      -- 在匹配项目 添加/跳过 光标
      {
        "<A-k>",
        function()
          require("multicursor-nvim").matchAddCursor(-1)
        end,
        mode = { "n", "x" },
        desc = "Add cursor by match word/selection",
      },
      {
        "<A-j>",
        function()
          require("multicursor-nvim").matchAddCursor(1)
        end,
        mode = { "n", "x" },
        desc = "Add cursor by match word/selection",
      },
      {
        "<A-S-k>",
        function()
          require("multicursor-nvim").matchSkipCursor(-1)
        end,
        mode = { "n", "x" },
        desc = "Skip cursor by match word/selection",
      },
      {
        "<A-S-j>",
        function()
          require("multicursor-nvim").matchSkipCursor(1)
        end,
        mode = { "n", "x" },
        desc = "Skip cursor by match word/selection",
      },
      -- 支持通过鼠标添加光标
      {
        "<C-leftmouse>",
        function()
          require("multicursor-nvim").handleMouse()
        end,
        mode = { "n", "x" },
        desc = "Skip cursor below the main cursor",
      },
    },
    config = function()
      local mc = require("multicursor-nvim")
      mc.setup()

      -- Mappings defined in a keymap layer only apply when there are multiple cursors. This lets you have overlapping mappings.
      mc.addKeymapLayer(function(layerSet)
        -- Select a different cursor as the main one.
        layerSet({ "n", "x" }, "<left>", mc.prevCursor)
        layerSet({ "n", "x" }, "<right>", mc.nextCursor)
        -- Delete the main cursor.
        layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor)
        -- Enable and clear cursors using escape.
        layerSet("n", "<esc>", function()
          mc.clearCursors()
        end)
      end)
    end,
  },
  -- 系统剪贴板监控
  {
    "gbprod/yanky.nvim",
    opts = {
      system_clipboard = {
        clipboard_register = "0",
      },
    },
  },
}
