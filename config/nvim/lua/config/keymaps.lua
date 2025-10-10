-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 模式介绍 https://neovim.fullstack.org.cn/doc/user/intro.html#_modes,-introduction
-- Normal Mode 普通模式
-- -- Opration-padding Mode 操作等待模式
-- Insert Mode 插入模式
-- -- Replace Mode 替换模式
-- -- Virtual Replace Mode 虚拟替换模式
-- -- Insert-Normal Mode 插入 -> 普通模式
-- -- Insert-Visual Mode 插入 -> 视图模式
-- -- Insert-Select Mode 插入 -> 选择模式
-- Visual Mode 可视模式
-- Select Mode 选择模式
-- Command-line Mode 命令行模式
-- Ex Mode 命令行模式式
-- Terminal Mode 终端模式

-- 移动整行内容
-- 移除LazyVim默认移动整行按键
vim.keymap.del({ "i", "n", "v" }, "<A-j>")
vim.keymap.del({ "i", "n", "v" }, "<A-k>")
vim.keymap.set("i", "<C-A-j>", "<Esc><CMD>move .+1<CR>==gi", { desc = "Move line down" })
vim.keymap.set("i", "<C-A-k>", "<Esc><CMD>move .-2<CR>==gi", { desc = "Move line down" })
vim.keymap.set("n", "<C-A-j>", "<CMD>execute 'move .+' . v:count1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<C-A-k>", "<CMD>execute 'move .-' . (v:count1 + 1)<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<C-A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "<C-A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<CR>gv=gv", { desc = "Move line up" })

-- 移动光标
vim.keymap.set("i", "<A-h>", "<Left>", { desc = "Move cursur to left" })
vim.keymap.set("i", "<A-l>", "<Right>", { desc = "Move cursur to right" })
vim.keymap.set("i", "<A-k>", "<Up>", { desc = "Move cursur to up" })
vim.keymap.set("i", "<A-j>", "<Down>", { desc = "Move cursur to down" })

-- 左右上下移动光标窗口 Ctrl+h,l,k,j
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move cursur to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move cursur to right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move cursur to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move cursur to up window" })

-- 避免删除内容复制到系统剪贴板
vim.keymap.set({ "n", "v" }, "x", '"_x', { desc = "Cut word and not paste exclude system clipboard" })
vim.keymap.set({ "n", "v" }, "X", '"_X', { desc = "Cut word and not paste exclude system clipboard" })
-- 添加空白行
vim.keymap.set("n", "<A-p>", "<CMD>normal o<Esc>", { desc = "Add empty line below cursur" })
vim.keymap.set("n", "<A-S-p>", "<CMD>normal O<Esc>", { desc = "Add empty line above cursur" })
-- 关闭搜索高亮
vim.keymap.set("n", "//", "<CMD>nohlsearch<CR>", { desc = "Clear hightlight" })
-- 切换换行状态
vim.keymap.set("n", "<A-z>", "<CMD>set wrap!<CR>", { desc = "Toggle line wrap" })
-- 快速定位行首、行尾
vim.keymap.set({ "n", "x", "o" }, "<S-h>", "^", { desc = "Start of line" })
vim.keymap.set({ "n", "x", "o" }, "<S-l>", "$", { desc = "End of line" })
-- 退出编辑模式
vim.keymap.set("i", "jk", "<Esc>", { desc = "End edit" })
-- 快速退出打开文件
vim.keymap.set({ "n", "x" }, "Q", "<CMD>qa<CR>", { desc = "Quit current buffer" })
vim.keymap.set({ "n", "x" }, "qq", "<CMD>q<CR>", { desc = "Quit all buffer" })
-- 保存文件
vim.keymap.set("n", "<C-s>", "<Esc><CMD>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<C-A-s>", "<Esc><CMD>wa<CR>", { desc = "Save all file" })
