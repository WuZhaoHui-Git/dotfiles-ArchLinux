return {
	-- 自动关闭括号
	{
		"https://gh-proxy.com/https://github.com/windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
		},
	},
	-- 文件修改历史
	{
		"https://gh-proxy.com/https://github.com/mbbill/undotree",
		keys = {
			{ "<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "Toggle undo-tree" },
		},
		init = function()
			vim.cmd([[
      if has("persistent_undo")
         let target_path = expand('~/.undodir')

          " create the directory and any parent directories if the location does not exist.
          if !isdirectory(target_path)
              call mkdir(target_path, "p", 0700)
          endif

          let &undodir=target_path
          set undofile
      endif
      ]])
		end,
	},
	-- 快速注释内容
	{
		"https://gh-proxy.com/https://github.com/numToStr/Comment.nvim",
    -- stylua: ignore
		keys = {
      { "<leader>/", function() require("Comment.api").toggle.linewise.current() end,                 mode = "n", desc = "[Comment] Comment current line", },
      { "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", mode = "v", desc = "Comment current line",           },
      -- control + / keymappings
      { "<C-/>",     function() require("Comment.api").toggle.linewise.current() end,                 mode = "n", desc = "[Comment] Comment current line", },
      { "<C-/>",     "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", mode = "v", desc = "Comment current line",           },
    },
		config = true,
	},
	-- Neovim复制内容复制到系统剪贴板
	-- 不用使用窗口的ctrl+shift+c来复制选中内容
	{
		"https://gh-proxy.com/https://github.com/ibhagwan/smartyank.nvim",
		event = { "BufWinEnter" },
		opts = {
			highlight = {
				timeout = 500, -- timeout for clearing the highlight
			},
			clipboard = {
				enabled = true,
			},
			osc52 = {
				silent = true, -- true to disable the "n chars copied" echo
			},
		},
	},
	-- 快速跳转指定内容
	{
		"https://gh-proxy.com/https://github.com/folke/flash.nvim",
		event = "BufReadPost",
		opts = {
			label = {
				rainbow = {
					enabled = true,
					shade = 1,
				},
			},
			modes = {
				char = {
					enabled = false,
				},
			},
		},
		keys = {
      -- stylua: ignore
      { "<leader>f", mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "[Flash] Jump"              },
      -- stylua: ignore
      { "<leader>F", mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "[Flash] Treesitter"        },
      -- stylua: ignore
      { "<leader>F", mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "[Flash] Treesitter Search" },
      -- stylua: ignore
      { "<c-f>",     mode = { "c" },           function() require("flash").toggle() end,            desc = "[Flash] Toggle Search"     },
			{
				"<leader>j",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump({
						search = { mode = "search", max_length = 0 },
						label = { after = { 0, 0 }, matches = false },
						jump = { pos = "end" },
						pattern = "^\\s*\\S\\?", -- match non-whitespace at start plus any character (ignores empty lines)
					})
				end,
				desc = "[Flash] Line jump",
			},
			{
				"<leader>k",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump({
						search = { mode = "search", max_length = 0 },
						label = { after = { 0, 0 }, matches = false },
						jump = { pos = "end" },
						pattern = "^\\s*\\S\\?", -- match non-whitespace at start plus any character (ignores empty lines)
					})
				end,
				desc = "[Flash] Line jump",
			},
		},
	},
	-- 高亮todo注释
	-- 通过snacks选择器查看文件所有todo内容
	{
		"https://gh-proxy.com/https://github.com/folke/todo-comments.nvim",
		dependencies = {
			"https://gh-proxy.com/https://github.com/nvim-lua/plenary.nvim",
			"folke/snacks.nvim",
		},
		event = "VeryLazy",
    -- stylua: ignore
    keys = {
      ---@diagnostic disable-next-line: undefined-field
      { "<leader>st", function() require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME", "BUG", "FIXIT", "HACK", "WARN", "ISSUE"  } }) end, desc = "[TODO] Pick todos (without NOTE)", },
      ---@diagnostic disable-next-line: undefined-field
      { "<leader>sT", function() require("snacks").picker.todo_comments() end, desc = "[TODO] Pick todos (with NOTE)", },
    },
		config = true,
	},
	-- 快捷插入环绕修饰符，如`()`，`{}`，`[]`，`''`，`""`
	{
		"https://gh-proxy.com/https://github.com/echasnovski/mini.surround",
		version = "*",
		event = "BufReadPost",
		config = true,
		keys = {
			-- Disable the vanilla `s` keybinding
			{ "s", "<NOP>", mode = { "n", "x", "o" } },
		},
	},
	-- 选择模式快速选择增强
	{
		-- Extend `a`/`i` textobjects
		"https://gh-proxy.com/https://github.com/echasnovski/mini.ai",
		version = "*",
		event = "BufReadPost",
		config = true,
	},
	-- 快速行首行尾插入内容
	{
		"https://gh-proxy.com/https://github.com/jake-stewart/multicursor.nvim",
		branch = "1.0",
		event = "BufReadPost",
		keys = {
			-- Append/insert for each line of visual selections. Similar to block selection insertion.
			-- {"mI", function() require("multicursor-nvim").insertVisual() end, mode = "x", desc = "Insert cursors at visual selection"},
			-- {"mA", function() require("multicursor-nvim").appendVisual() end, mode = "x", desc = "Append cursors at visual selection"},
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
			-- Add a cursor and jump to the next/previous search result.
			{
				"<leader>/n",
				function()
					require("multicursor-nvim").searchAddCursor(1)
				end,
				mode = "n",
				desc = "Add a cursor and jump to the next search result",
			},
			{
				"<leader>/N",
				function()
					require("multicursor-nvim").searchAddCursor(-1)
				end,
				mode = "n",
				desc = "Add a cursor and jump to the previous search result",
			},
		},
		config = function()
			local mc = require("multicursor-nvim")
			mc.setup()

			-- Mappings defined in a keymap layer only apply when there are multiple cursors. This lets you have overlapping mappings.
			mc.addKeymapLayer(function(layerSet)
				-- Enable and clear cursors using escape.
				layerSet("n", "<esc>", function()
					mc.clearCursors()
				end)
			end)
		end,
	},
}
