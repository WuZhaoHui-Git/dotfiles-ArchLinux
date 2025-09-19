--搜索相关
vim.opt.number = true -- 显示行号
vim.opt.showcmd = true -- 在底部显示当前命令
vim.opt.wildmenu = true -- 启用命令行补全菜单
vim.opt.wildmode = "longest:full,full" -- 优化补全行为
vim.opt.incsearch = true -- 启用增量搜索
vim.opt.hlsearch = true -- 高亮显示搜索结果
vim.opt.incsearch = true -- 增量搜索（输入时实时匹配）
vim.opt.ignorecase = true -- 搜索时忽略大小写
vim.opt.smartcase = true -- 如果搜索模式包含大写字母，则区分大小写
vim.opt.showmatch = true -- 高亮显示匹配的括号

--界面相关
vim.opt.laststatus= 2 -- 总是显示状态栏
vim.opt.showmode = true -- 显示当前模式（如 INSERT、NORMAL）
vim.opt.ruler = true -- 显示光标位置（行号、列号）
vim.opt.scrolloff=5 -- 光标距离顶部/底部的最小行数
--vim.opt.guifont= "Consolas:h12" -- 设置 GUI 字体（仅适用于 GUI 版本的 Neovim）
vim.opt.guifont = "FiraCode Nerd Font:h12"

--缩进相关
vim.opt.autoindent = true -- 自动缩进
vim.opt.smartindent = true -- 智能缩进
vim.opt.cindent = true -- C 语言风格的缩进
vim.opt.tabstop = 2 -- Tab 键的宽度为 2 个空格
vim.opt.softtabstop= 2 -- 编辑时 Tab 键的宽度为 2 个空格
vim.opt.shiftwidth= 2 -- 自动缩进时的宽度为 2 个空格
vim.opt.expandtab = false -- 不将 Tab 转换为空格

--编码相关
vim.opt.encoding="utf-8"  -- 默认编码为 UTF-8
-- vim.opt.fileencoding="utf-8" -- 文件保存时的编码为 UTF-8
vim.opt.fileencodings="ucs-bom,utf-8,cp936,latin1,gb18030,gbk,gb2312,chinese" -- 文件编码探测顺序
vim.opt.fileformats="unix,dos" -- 文件换行符格式（Unix 和 DOS）

--其他配置
vim.opt.linebreak = true -- 在单词边界换行
vim.opt.wrap = true -- 自动换行
vim.opt.mouse="" --禁用鼠标支持
vim.opt.compatible = false -- 禁用 Vi 兼容模式
vim.opt.backspace = "indent,eol,start" -- 允许退格键删除缩进、换行符和插入模式前的字符
vim.opt.endofline = false -- 不自动添加换行符
vim.opt.list = true -- 显示不可见字符（如 Tab、空格）
--vim.opt.listchars = {tab = '¦\\'}
vim.opt.syntax = "on" -- 启用语法高亮
vim.opt.timeoutlen=130 -- 快捷键超时时间（毫秒）
vim.cmd('filetype plugin on') -- 启用文件类型检测和插件

vim.opt.list = true -- 启用显示不可见字符
vim.opt.listchars = {
  tab = '¦ ', -- 用 │ 表示 Tab
  trail = '·', -- 用 · 表示行尾空格
  extends = '›', -- 用 › 表示超出屏幕的文本
  precedes = '‹', -- 用 ‹ 表示超出屏幕的文本
  nbsp = '␣', -- 用 ␣ 表示非断行空格
}

vim.opt.cursorline = true -- 启用光标所在行高亮
vim.opt.cursorcolumn = true -- 启用光标所在列高亮
vim.opt.termguicolors = true --启用真彩色

vim.opt.clipboard = unnamedplus -- 使用系统剪贴板
