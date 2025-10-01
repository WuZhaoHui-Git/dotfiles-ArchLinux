-- leader快捷键配置
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- 编辑模式，左上下右移动光标 Ctrl+h,j,k,l
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move cursur to left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move cursur to right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move cursur to down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move cursur to up" })
-- 退出编辑模式
vim.keymap.set("i", "jk", "<Esc>", { desc = "End edit" })

-- 普通模式，下左上下右移动光标窗口 Ctrl+h,j,k,l
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move cursur to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move cursur to right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move cursur to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move cursur to up window" })
-- 普通模式、选择模式、操作等待模式，快速定位行首、行尾，可用于快速复制行
vim.keymap.set({ "n", "x", "o" }, "<S-H>", "^", { desc = "Start of line" })
vim.keymap.set({ "n", "x", "o" }, "<S-L>", "$", { desc = "End of line" })
-- 普通模式、选择模式，快速退出打开文件
vim.keymap.set({ "n", "x" }, "Q", "<CMD>:qa<CR>")
vim.keymap.set({ "n", "x" }, "qq", "<CMD>:q<CR>")
-- 普通模式，切换换行状态
vim.keymap.set("n", "<A-z>", "<CMD>set wrap!<CR>", { desc = "Toggle line wrap" })
-- 普通模式，保存文件
vim.keymap.set("n", "<C-s>", ":a<CR>", { desc = "Save file" })
vim.keymap.set("n", "<C-S>", ":wa<CR>", { desc = "Save all file" })

-- 插件快捷键速览
-- Lazy.vim 快捷键配置
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
-- 快捷打开Lazy.nvim leader+shift+l
vim.keymap.set("n", "<leader>L", "<CMD>Lazy<CR>", { desc = "[Lazy] Open Lazy.nvim" })

-- snacks 快捷键配置
-- { "<A-w>", function() require("snacks").bufdelete() end, desc = "[Snacks] Delete buffer" },
-- { "<leader>si", function() require("snacks").image.hover() end, desc = "[Snacks] Display image" },
-- { "<A-i>", function() require("snacks").terminal() end, desc = "[Snacks] Toggle terminal", mode = {"n",  "t"} },
-- -- Notification
-- { "<leader>sn", function() require("snacks").picker.notifications() end, desc = "[Snacks] Notification history" },
-- { "<leader>n", function() require("snacks").notifier.show_history() end, desc = "[Snacks] Notification history" },
-- { "<leader>un", function() require("snacks").notifier.hide() end, desc = "[Snacks] Dismiss all notifications" },
-- -- Top Pickers & Explorer
-- { "<leader><space>", function() require("snacks").picker.smart() end, desc = "[Snacks] Smart find files" },
-- { "<leader>,", function() require("snacks").picker.buffers() end, desc = "[Snacks] Buffers" },
-- { "<leader>sn", function() require("snacks").picker.notifications() end, desc = "[Snacks] Notification history" },
-- -- find
-- { "<leader>sb", function() require("snacks").picker.buffers() end, desc = "[Snacks] Buffers" },
-- { "<leader>sf", function() require("snacks").picker.files() end, desc = "[Snacks] Find files" },
-- { "<leader>sp", function() require("snacks").picker.projects() end, desc = "[Snacks] Projects" },
-- { "<leader>sr", function() require("snacks").picker.recent() end, desc = "[Snacks] Recent" },
-- -- git
-- { "<C-g>", function() require("snacks").lazygit() end, desc = "[Snacks] Lazygit" },
-- { "<leader>ggl", function() require("snacks").picker.git_log() end, desc = "[Snacks] Git log" },
-- { "<leader>ggd", function() require("snacks").picker.git_diff() end, desc = "[Snacks] Git diff" },
-- { "<leader>ggb", function() require("snacks").git.blame_line() end, desc = "[Snacks] Git blame line" },
-- { "<leader>ggB", function() require("snacks").gitbrowse() end, desc = "[Snacks] Git browse" },
-- -- Grep
-- { "<leader>sb", function() require("snacks").picker.lines() end, desc = "[Snacks] Buffer lines" },
-- { "<leader>sB", function() require("snacks").picker.grep_buffers() end, desc = "[Snacks] Grep open buffers" },
-- { "<leader>sg", function() require("snacks").picker.grep() end, desc = "[Snacks] Grep" }, { "<leader>sw", function() require("snacks").picker.grep_word() end, desc = "[Snacks] Visual selection or word", mode = { "n", "x" } },
-- -- search
-- { '<leader>s"', function() require("snacks").picker.registers() end, desc = "[Snacks] Registers" },
-- { '<leader>s/', function() require("snacks").picker.search_history() end, desc = "[Snacks] Search history" },
-- { "<leader>sa", function() require("snacks").picker.spelling() end, desc = "[Snacks] Spelling" },
-- { "<leader>sA", function() require("snacks").picker.autocmds() end, desc = "[Snacks] Autocmds" },
-- { "<leader>s:", function() require("snacks").picker.command_history() end, desc = "[Snacks] Command history" },
-- { "<leader>sc", function() require("snacks").picker.commands() end, desc = "[Snacks] Commands" },
-- { "<leader>sd", function() require("snacks").picker.diagnostics() end, desc = "[Snacks] Diagnostics" },
-- { "<leader>sD", function() require("snacks").picker.diagnostics_buffer() end, desc = "[Snacks] Diagnostics buffer" },
-- { "<leader>sH", function() require("snacks").picker.help() end, desc = "[Snacks] Help pages" },
-- { "<leader>sh", function() require("snacks").picker.highlights() end, desc = "[Snacks] Highlights" },
-- { "<leader>sI", function() require("snacks").picker.icons() end, desc = "[Snacks] Icons" },
-- { "<leader>sj", function() require("snacks").picker.jumps() end, desc = "[Snacks] Jumps" },
-- { "<leader>sk", function() require("snacks").picker.keymaps() end, desc = "[Snacks] Keymaps" },
-- { "<leader>sl", function() require("snacks").picker.loclist() end, desc = "[Snacks] Location list" },
-- { "<leader>sm", function() require("snacks").picker.marks() end, desc = "[Snacks] Marks" },
-- { "<leader>sM", function() require("snacks").picker.man() end, desc = "[Snacks] Man pages" },
-- { "<leader>sp", function() require("snacks").picker.lazy() end, desc = "[Snacks] Search for plugin spec" },
-- { "<leader>sq", function() require("snacks").picker.qflist() end, desc = "[Snacks] Quickfix list" },
-- { "<leader>sr", function() require("snacks").picker.resume() end, desc = "[Snacks] Resume" },
-- { "<leader>su", function() require("snacks").picker.undo() end, desc = "[Snacks] Undo history" },
-- -- LSP
-- { "gd", function() require("snacks").picker.lsp_definitions() end, desc = "[Snacks] Goto definition" },
-- { "gD", function() require("snacks").picker.lsp_declarations() end, desc = "[Snacks] Goto declaration" },
-- { "gr", function() require("snacks").picker.lsp_references() end, desc = "[Snacks] References" },
-- { "gI", function() require("snacks").picker.lsp_implementations() end, desc = "[Snacks] Goto implementation" },
-- { "gy", function() require("snacks").picker.lsp_type_definitions() end, desc = "[Snacks] Goto t[y]pe definition" },
-- { "<leader>ss", function() require("snacks").picker.lsp_symbols() end, desc = "[Snacks] LSP symbols" },
-- { "<leader>sS", function() require("snacks").picker.lsp_workspace_symbols() end, desc = "[Snacks] LSP workspace symbols" },
-- -- Words
-- { "]]", function() require("snacks").words.jump(vim.v.count1) end, desc = "[Snacks] Next Reference", mode = { "n", "t" } },
-- { "[[", function() require("snacks").words.jump(-vim.v.count1) end, desc = "[Snacks] Prev Reference", mode = { "n", "t" } },
-- -- Zen mode
-- { "<leader>z", function() require("snacks").zen() end, desc = "[Snacks] Toggle Zen Mode" },
-- { "<leader>Z", function() require("snacks").zen.zoom() end, desc = "[Snacks] Toggle Zoom" },

-- 标签页切换标签
-- { "<A-<>", "<CMD>BufferMovePrevious<CR>", mode = {"n"}, desc = "[Buffer] Move buffer left"  },
-- { "<A->>", "<CMD>BufferMoveNext<CR>",     mode = {"n"}, desc = "[Buffer] Move buffer right" },
-- { "<A-1>", "<CMD>BufferGoto 1<CR>",       mode = {"n"}, desc = "[Buffer] Go to buffer 1"    },
-- { "<A-2>", "<CMD>BufferGoto 2<CR>",       mode = {"n"}, desc = "[Buffer] Go to buffer 2"    },
-- { "<A-3>", "<CMD>BufferGoto 3<CR>",       mode = {"n"}, desc = "[Buffer] Go to buffer 3"    },
-- { "<A-4>", "<CMD>BufferGoto 4<CR>",       mode = {"n"}, desc = "[Buffer] Go to buffer 4"    },
-- { "<A-5>", "<CMD>BufferGoto 5<CR>",       mode = {"n"}, desc = "[Buffer] Go to buffer 5"    },
-- { "<A-6>", "<CMD>BufferGoto 6<CR>",       mode = {"n"}, desc = "[Buffer] Go to buffer 6"    },
-- { "<A-7>", "<CMD>BufferGoto 7<CR>",       mode = {"n"}, desc = "[Buffer] Go to buffer 7"    },
-- { "<A-8>", "<CMD>BufferGoto 8<CR>",       mode = {"n"}, desc = "[Buffer] Go to buffer 8"    },
-- { "<A-9>", "<CMD>BufferGoto 9<CR>",       mode = {"n"}, desc = "[Buffer] Go to buffer 9"    },
-- { "<A-h>", "<CMD>BufferPrevious<CR>",     mode = {"n"}, desc = "[Buffer] Previous buffer"   },
-- { "<A-l>", "<CMD>BufferNext<CR>",         mode = {"n"}, desc = "[Buffer] Next buffer"       },

-- 文件树快捷键
-- { "<leader>e", "<CMD>NvimTreeToggle<CR>", mode = { "n" }, desc = "[NvimTree] Toggle NvimTree" },

-- 通知历史快捷键
-- { "<leader>sN", "<CMD>Noice pick<CR>", desc = "[Noice] Pick history messages" },
-- { "<leader>N", "<CMD>Noice<CR>", desc = "[Noice] Show history messages" },
