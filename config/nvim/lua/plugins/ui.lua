return {
  -- 标签页插件
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<S-h>", false },
      { "<S-l>", false },
      { "<A-h>", "<cmd>BufferLineCyclePrev<cr>", mode = { "n" }, desc = "Prev buffer" },
      { "<A-l>", "<cmd>BufferLineCycleNext<cr>", mode = { "n" }, desc = "Next buffer" },
      { "<C-A-h>", "<cmd>BufferLineMovePrev<cr>", mode = { "n" }, desc = "Move buffer prev" },
      { "<C-A-l>", "<cmd>BufferLineMoveNext<cr>", mode = { "n" }, desc = "Move buffer next" },
      { "<A-1>", "<CMD>BufferLineGoToBuffer 1<CR>", mode = { "n" }, desc = "Go To Buffer 1" },
      { "<A-2>", "<CMD>BufferLineGoToBuffer 2<CR>", mode = { "n" }, desc = "Go To Buffer 2" },
      { "<A-3>", "<CMD>BufferLineGoToBuffer 3<CR>", mode = { "n" }, desc = "Go To Buffer 3" },
      { "<A-4>", "<CMD>BufferLineGoToBuffer 4<CR>", mode = { "n" }, desc = "Go To Buffer 4" },
      { "<A-5>", "<CMD>BufferLineGoToBuffer 5<CR>", mode = { "n" }, desc = "Go To Buffer 5" },
      { "<A-6>", "<CMD>BufferLineGoToBuffer 6<CR>", mode = { "n" }, desc = "Go To Buffer 6" },
      { "<A-7>", "<CMD>BufferLineGoToBuffer 7<CR>", mode = { "n" }, desc = "Go To Buffer 7" },
      { "<A-8>", "<CMD>BufferLineGoToBuffer 8<CR>", mode = { "n" }, desc = "Go To Buffer 8" },
      { "<A-9>", "<CMD>BufferLineGoToBuffer 9<CR>", mode = { "n" }, desc = "Go To Buffer 9" },
    },
  },
  {
    "solke/snacks.nvim",
		-- stylua: ignore
    keys = {
      { "<A-w>", function() Snacks.bufdelete() end, mode = { "n" }, desc = "Delete current buffer", },
      { "<C-A-w>", function() Snacks.bufdelete.all() end, mode = { "n" }, desc = "Delete all buffer", },
    },
  },
  -- 预览颜色
  {
    "norcalli/nvim-colorizer.lua",
    config = function(_, _)
      require("colorizer").setup()
    end,
  },
  -- 滚动条
  {
    "petertriho/nvim-scrollbar",
    opts = {
      handelers = {
        gitsigns = true, -- Requires gitsigns
        search = true, -- Requires hlslens
      },
      marks = {
        Search = {
          color = "#CBA6F7",
        },
        GitAdd = { text = "┃" },
        GitChange = { text = "┃" },
        GitDelete = { text = "_" },
      },
    },
  },
  -- yazi 文件浏览器弹窗
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
      "folke/snacks.nvim",
      { "nvim-lua/plenary.nvim", lazy = true },
    },
    -- stylua: ignore
    keys = {
      { "<leader>fy", "<CMD>Yazi<CR>", mode = { "n", "v" }, desc = "Open yazi at the current file" },
      { "<leader>fY", "<CMD>Yazi cwd<CR>", mode = { "n", "v" }, desc = "Open the yazi in working directory" },
      { "<C-A-y>", "<CMD>Yazi toggle<CR>", mode = { "n", "v" }, desc = "Resume the last yazi session" },
    },
    opts = {
      open_for_directories = false,
      keymaps = {
        show_help = "<f1>",
      },
    },
    init = function()
      vim.g.loaded_netrwPlugin = 1
    end,
  },
}
