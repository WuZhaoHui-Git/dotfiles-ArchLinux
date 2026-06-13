local variables = require("hyprland.variables")

---------------------
---- KEYBINDINGS ----
---------------------

-- See https://wiki.hypr.land/Configuring/Basics/Binds/

-- 窗口按键
hl.bind("SUPER + Q", hl.dsp.window.close(), { description = "关闭当前窗口" })
hl.bind("SUPER + CTRL + Q", hl.dsp.window.kill(), { description = "强制关闭当前窗口" })
hl.bind("SUPER + CTRL + SHIFT + Q", function()
	variables.clossAllWindows()
end, { description = "关闭所有窗口" })
hl.bind("SUPER + D", function()
	hl.dispatch(hl.dsp.window.float())
	hl.dispatch(hl.dsp.window.center())
	-- hl.dsp.window.resize({ x = 800, y = 600, "exact" })
end, { description = "悬浮窗口" })
hl.bind(
	"SUPER + F",
	hl.dsp.window.fullscreen({ "maximized", "toggle", "activewindow" }),
	{ description = "最大化窗口" }
)
hl.bind(
	"SUPER + CTRL + F",
	hl.dsp.window.fullscreen({ "fullscreen", "toggle", "activewindow" }),
	{ description = "全屏窗口" }
)
hl.bind("ALT + TAB", function()
	hl.dispatch(hl.dsp.window.cycle_next({ window = "activewindow" }))
	hl.dispatch(hl.dsp.window.alter_zorder({ mode = "top", window = "activewindow" }))
end, { description = "聚焦下一个窗口" })
hl.bind("ALT + SHIFT + TAB", function()
	hl.dispatch(hl.dsp.window.cycle_next({ next = "prev", window = "activewindow" }))
	hl.dispatch(hl.dsp.window.alter_zorder({ mode = "top", window = "activewindow" }))
end, { description = "聚焦上一个窗口" })
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "鼠标左键移动窗口" })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "鼠标右键设置窗口大小" })

-- Scrolling Layout
hl.bind("SUPER + Equal", hl.dsp.layout("colresize +conf"), { description = "增大窗口水平大小" })
hl.bind("SUPER + Minus", hl.dsp.layout("colresize -conf"), { description = "减少窗口水平大小" })

hl.bind("SUPER + Left", hl.dsp.layout("focus l"), { description = "聚焦左边窗口" })
hl.bind("SUPER + Down", hl.dsp.layout("focus d"), { description = "聚焦下边窗口" })
hl.bind("SUPER + Up", hl.dsp.layout("focus u"), { description = "聚焦上边窗口" })
hl.bind("SUPER + Right", hl.dsp.layout("focus r"), { description = "聚焦右边窗口" })

hl.bind("SUPER + CTRL + Left", hl.dsp.layout("move -300"), { repeating = true, description = "向左移动布局" })
hl.bind("SUPER + CTRL + Right", hl.dsp.layout("move +300"), { repeating = true, description = "向右移动布局" })

hl.bind("SUPER + ALT + Left", hl.dsp.layout("swapcol l"), { description = "与左边窗口交换位置" })
hl.bind("SUPER + ALT + Right", hl.dsp.layout("swapcol r"), { description = "与右边窗口交换位置" })

hl.unbind("SUPER + F")
hl.bind("SUPER + F", hl.dsp.layout("fit active"), { description = "最大化活动窗口" })
hl.bind("SUPER + SHIFT + F", hl.dsp.layout("promote"), { description = "重置活动窗口为初始状态" })

-- 工作区按键
for i = 1, 10 do
	local key = i % 10
	hl.bind("SUPER + " .. key, function()
		hl.dispatch(hl.dsp.focus({ workspace = variables.workspaceGroup(i) }))
	end, { description = "切换到第" .. i .. "工作区" })
	hl.bind("SUPER + CTRL + " .. key, function()
		hl.dispatch(hl.dsp.window.move({ workspace = variables.workspaceGroup(i) }))
	end, { description = "移动窗口到第" .. i .. "工作区" })
end

hl.bind("SUPER + TAB", hl.dsp.focus({ workspace = "m+1" }), { description = "切换到下一个工作区" })
hl.bind("SUPER + SHIFT + TAB", hl.dsp.focus({ workspace = "m-1" }), { description = "切换到上一个工作区" })
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "m+1" }), { description = "切换到下一个工作区" })
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "m-1" }), { description = "切换到上一个工作区" })

hl.bind(
	"SUPER + CTRL + TAB",
	hl.dsp.window.move({ workspace = "m+1" }),
	{ description = "移动窗口到下一个工作区" }
)
hl.bind(
	"SUPER + CTRL + SHIFT + TAB",
	hl.dsp.window.move({ workspace = "m-1" }),
	{ description = "移动窗口到上一个工作区" }
)
hl.bind(
	"SUPER + CTRL + mouse_up",
	hl.dsp.window.move({ workspace = "m+1" }),
	{ description = "移动窗口到下一个工作区" }
)
hl.bind(
	"SUPER + CTRL + mouse_down",
	hl.dsp.window.move({ workspace = "m-1" }),
	{ description = "移动窗口到上一个工作区" }
)

hl.bind("SUPER + SHIFT + S", hl.dsp.workspace.toggle_special("special"), { description = "打开特殊工作区" })
hl.bind(
	"SUPER + CTRL + S",
	hl.dsp.window.move({ workspace = "special:special" }),
	{ description = "移动窗口到特殊工作区" }
)

-- 快速启动按键
hl.bind("SUPER + Space", hl.dsp.exec_cmd(variables.applicationLaucher), { description = "打开应用菜单" })
hl.bind("SUPER + T", hl.dsp.exec_cmd(variables.terminal), { description = "打开终端" })
hl.bind("SUPER + W", hl.dsp.exec_cmd(variables.browser), { description = "打开浏览器" })
hl.bind("SUPER + E", hl.dsp.exec_cmd(variables.guiFileManager), { description = "打开文件管理器" })
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd(variables.tuiFileManager), { description = "打开文件管理器" })
hl.bind("SUPER + CTRL + E", hl.dsp.exec_cmd(variables.emojiPicker), { description = "打开Emoji选择器" })
hl.bind("SUPER + I", hl.dsp.exec_cmd("systemsettings"), { description = "打开KDE系统设置" })
hl.bind("SUPER + CTRL + V", hl.dsp.exec_cmd("pavecontrol"), { description = "打开音频管理器" })
hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd("plasma-systemmonitor"), { description = "打开KDE任务管理器" })

-- 屏幕缩放按键
hl.bind("SUPER + SHIFT + mouse_down", function()
	variables.ZOOM(0.5)
end, { description = "放大鼠标指针位置" })
hl.bind("SUPER + SHIFT + mouse_up", function()
	variables.ZOOM(-0.5)
end, { description = "缩小鼠标指针位置" })
hl.bind("SUPER + SHIFT + Z", function()
	hl.config({ cursor = { zoom_factor = 0 } })
	hl.config({ cursor = { zoom_factor = 0 } })
end, { description = "重置鼠标指针缩放" })

-- 功能按键
hl.bind("SUPER + CTRL + R", hl.dsp.exec_cmd("hyprctl reload"), { description = "重载配置" })
hl.bind("PRINT", hl.dsp.exec_cmd("hyprland-screenshot region edit"), { description = "编辑选区截图" })
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprland-screenshot output edit"), { description = "编辑全屏截图" })
hl.bind("SUPER + PRINT", hl.dsp.exec_cmd("hyprland-screenshot region"), { description = "区域截图" })
hl.bind("SUPER + SHIFT + PRINT", hl.dsp.exec_cmd("hyprland-screenshot output"), { description = "全屏截图" })

hl.bind("SUPER + R", hl.dsp.exec_cmd("hyprland-screen-record monitor sink"), { description = "全屏录制" })
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd("hyprland-screen-record area sink"), { description = "选区录制" })
hl.bind(
	"SUPER + CTRL + R",
	hl.dsp.exec_cmd("hyprland-screen-record monitor source"),
	{ description = "选区录制（有声）" }
)
hl.bind(
	"SUPER + CTRL + SHIFT + R",
	hl.dsp.exec_cmd("hyprland-screen-record area source"),
	{ description = "全屏录制（有声）" }
)

hl.bind("SUPER + V", hl.dsp.exec_cmd(variables.clipboard), { description = "打开剪贴板" })
hl.bind("SUPER + CTRL + T", hl.dsp.exec_cmd("hyprland-theme-menu"), { description = "打开主题选择" })
hl.bind("SUPER + CTRL + W", hl.dsp.exec_cmd("hyprland-wallpaper-ramdom"), { description = "随机壁纸" })

-- 会话按键
hl.bind("SUPER + ALT + L", hl.dsp.exec_cmd("power lock"), { description = "系统锁屏" })
hl.bind("SUPER + CTRL + L", hl.dsp.exec_cmd("power suspend"), { description = "系统休眠" })

-- Fn 功能区按键
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd(variables.osdClient .. " --output-volume raise --max-volume 150"),
	{ locked = true, repeating = true, description = "提高音频输出音量" }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd(variables.osdClient .. " --output-volume lower --max-volume 150"),
	{ locked = true, repeating = true, description = "降低音频输出音量" }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd(variables.osdClient .. " --output-volume mute-toggle"),
	{ locked = true, description = "（禁/启）用音频输出" }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd(variables.osdClient .. " --output-volume mute-toggle"),
	{ locked = true, description = "（禁/启）音频输入" }
)
hl.bind(
	"SHIFT + XF86AudioRaiseVolume",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl next"),
	{ locked = true, description = "播放下一个媒体" }
)
hl.bind(
	"SHIFT + XF86AudioLowerVolume",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl previous"),
	{ locked = true, description = "播放上一个媒体" }
)
hl.bind(
	"SHIFT + XF86AudioMute",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl play-pause"),
	{ locked = true, description = "播放/暂停媒体" }
)
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd(variables.osdClient .. " --brightness +5"),
	{ locked = true, repeating = true, description = "提高屏幕亮度" }
)
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd(variables.osdClient .. " --brightness -5"),
	{ locked = true, repeating = true, description = "降低屏幕亮度" }
)
hl.bind(
	"SHIFT + XF86MonBrightnessUp",
	hl.dsp.exec_cmd("brightnessctl -d platform::kbd_backlight s 50%+"),
	{ locked = true, repeating = true, description = "提高键盘背光亮度" }
)
hl.bind(
	"SHIFT + XF86MonBrightnessDown",
	hl.dsp.exec_cmd("brightnessctl -d platform::kbd_backlight s 50%-"),
	{ locked = true, repeating = true, description = "降低键盘背光亮度" }
)
hl.bind(
	"XF86AudioNext",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl next"),
	{ locked = true, description = "播放下一个媒体" }
)
hl.bind(
	"XF86AudioPause",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl play-pause"),
	{ locked = true, description = "播放/暂停媒体" }
)
hl.bind(
	"XF86AudioPlay",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl play-pause"),
	{ locked = true, description = "播放/暂停媒体" }
)
hl.bind(
	"XF86AudioPrev",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl previous"),
	{ locked = true, description = "播放上一个媒体" }
)
hl.bind("XF86Calculator", hl.dsp.exec_cmd("qalculate-qt"), { description = "打开计算器" })
hl.bind("SHIFT + XF86AudioNext", hl.dsp.exec_cmd("mpc next"), { locked = true, description = "播放下一首音乐" })
hl.bind("SHIFT + XF86AudioPrev", hl.dsp.exec_cmd("mpc pre"), { locked = true, description = "播放上一首音乐" })
hl.bind("SHIFT + XF86AudioPause", hl.dsp.exec_cmd("mpc pause"), { locked = true, description = "暂停播放音乐" })
hl.bind(
	"SHIFT + XF86AudioPlay",
	hl.dsp.exec_cmd("mpc toggle"),
	{ locked = true, description = "开始/暂停播放音乐" }
)
hl.bind(
	"SHIFT + XF86AudioRaiseVolume",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl next"),
	{ locked = true, description = "播放下一个媒体" }
)
hl.bind(
	"SHIFT + XF86AudioLowerVolume",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl prev"),
	{ locked = true, description = "播放上一个媒体" }
)
hl.bind(
	"SHIFT + XF86AudioMute",
	hl.dsp.exec_cmd(variables.osdClient .. " --playerctl play-pause"),
	{ locked = true, description = "播放/暂停媒体" }
)
