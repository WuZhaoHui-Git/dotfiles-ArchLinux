local colors = require("hyprland.theme")

------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- 默认显示器设置
hl.monitor({
	-- 设备
	output = "",
	-- 分辨率@刷新率
	mode = "preferred",
	-- 屏幕位置
	position = "auto",
	-- 缩放率
	scale = "auto",
	-- 屏幕旋转
	transform = 0,
})

-----------------------
---- LOOK AND FEEL ----
-----------------------

-- See https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
	-- 窗口常规设置
	-- See https://wiki.hypr.land/Configuring/Basics/Variables/#general
	general = {
		-- 窗口之间间隙
		gaps_in = 4,
		-- 窗口与屏幕间隙
		gaps_out = 2,
		-- 工作空间间隙
		gaps_workspaces = 50,

		-- 边框大小
		border_size = 2,
		col = {

			-- 活动窗口边框颜色
			active_border = colors.borderColor,
			-- 非活动窗口边框颜色
			inactive_border = colors.surface1,
		},
		-- 通过单击和拖动边框和间隙来调整窗口大小
		resize_on_border = true,
		-- 焦点移动到未找到窗口的方向时，不会回退到下一个可用窗口
		no_focus_fallback = true,
		-- 允许画面撕裂
		-- This just allows the `immediate` window rule to work
		allow_tearing = true,
		layout = "scrolling",

		snap = {
			-- 启用浮动窗口捕捉
			enabled = true,
		},
	},

	-- dwindle窗口布局设置
	dwindle = {
		-- 无论容器发生什么情况，拆分（侧面/顶部）都不会改变
		preserve_split = true,
		-- 允许通过鼠标位置控制切割窗口（最靠近哪个角落）
		smart_split = false,
		-- 允许通过鼠标位置控制调整大小方向（最靠近哪个角落）
		smart_resizing = false,
		-- 根据鼠标所在的位置更精确地放置窗口
		-- precise_mouse_move = true,
	},

	-- scrolling窗口布局
	scrolling = {
		-- 启用单列覆盖整个工作空间屏幕
		fullscreen_on_one_column = true,
		-- 默认单列占用屏幕比例
		column_width = 0.5,
		-- 聚焦列时，列展示方式：0：中心，1：拟合
		focus_fit_method = 1,
	},

	-- 窗口美化设置
	-- See https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
	decoration = {
		-- 圆角半径
		rounding = 10,

		-- 模糊设置
		blur = {
			enabled = true,
			-- 浮动窗口忽略平铺窗口模糊
			xray = true,
			-- 特殊工作空间后面动态模糊（大性能开销）
			special = false,
			-- 模糊性能优化
			new_optimizations = true,
			-- 模糊粒度
			size = 14,
			-- 模糊传递量
			passes = 3,
			-- 模糊亮度
			brightness = 1,
			-- 模糊噪声
			noise = 0.04,
			-- 模糊对比度
			contrast = 1,
			-- 弹出窗口模糊
			popups = true,
			-- 像素透明度
			popups_ignorealpha = 0.6,
			-- 输入法背景模糊
			input_methods = true,
			-- 输入法像素透明度
			input_methods_ignorealpha = 0.8,
		},

		-- 阴影设置
		shadow = {
			enabled = true,
			-- 阴影范围
			range = 30,
			-- 阴影渲染偏移量
			offset = { 0, 2 },
			-- 阴影渲染衰减
			render_power = 4,
			-- 阴影色彩
			color = colors.base,
		},

		-- Dim
		-- 非活动窗口暗色
		dim_inactive = true,
		-- 非活动窗口暗淡度
		dim_strength = 0.025,
		-- 特殊工作区渲染后，底部工作区暗淡度
		dim_special = 0.07,
	},

	-- 动画设置
	-- See https://wiki.hypr.land/Configuring/Basics/Variables/#animations
	animations = {
		enabled = true,
	},

	-- 输入设备设置
	-- See https://wiki.hypr.land/Configuring/Basics/Variables/#input
	input = {
		-- 键盘布局
		kb_layout = "us",
		-- 数字键盘锁
		numlock_by_default = true,
		-- 按住按键重发延迟
		repeat_delay = 750,
		-- 按住按键重发按键信号频率
		repeat_rate = 35,
		-- 鼠标光标移动焦点策略
		follow_mouse = 1,
		-- 窗口关闭时焦点行为
		-- 0 移动到下一个候选窗口 1 焦点移动到光标下方窗口 2 焦点移动到最近使用/激活的窗口
		focus_on_close = 2,
		-- 处理聚焦窗口周围的轴事件（间隙/边框表示平铺，拖动区域/边框表示浮动）。
		-- 0 忽略轴事件 1 发送越界坐标 2 伪造指针坐标到窗口内最近的点 3 将光标扭曲到窗口内最近的点
		off_window_axis_events = 2,

		-- 触碰板设置
		touchpad = {
			-- 反转触碰板滚动方向，向下滚动内容向上滚动，反之亦然，类似手机滚动屏幕效果
			-- natural_scroll = yes,
			-- 键盘输入时禁用触碰板
			disable_while_typing = true,
			-- 手指映射对应鼠标按键
			clickfinger_behavior = true,
			-- 双指滚动偏移量
			scroll_factor = 2,
		},
	},

	-- 其他设置
	-- See https://wiki.hypr.land/Configuring/Basics/Variables/#misc
	misc = {
		-- 禁用默认壁纸
		disable_hyprland_logo = true,
		-- 禁用飞溅渲染
		disable_splash_rendering = true,
		-- 控制显示器的 VRR（自适应同步）。
		vrr = 3,
		-- 启用鼠标移动唤醒屏幕
		mouse_move_enables_dpms = true,
		-- 启用键盘唤醒屏幕
		key_press_enables_dpms = true,
		-- 处理窗口移动/窗口大小重置动画
		animate_manual_resizes = false,
		-- 处理鼠标移动窗口动画
		animate_mouse_windowdragging = false,
		-- 窗口吞咽
		enable_swallow = false,
		-- 吞咽的窗口
		swallow_regex = "(foot|kitty|alacritty|Alacritty)",
		-- 跳转链接并聚焦指定链接窗口app
		focus_on_activate = true,
		-- 新建窗口在窗口最大化时处理策略
		-- 0 在最大化窗口后显示
		-- 1 最大化切显示在最大化窗口前
		-- 2 取消当前窗口最大化
		on_focus_under_fullscreen = 2,
		-- 锁屏应用崩溃重启
		allow_session_lock_restore = true,
		-- 在锁屏应用下保留工作区
		session_lock_xray = true,
		-- 在当前工作区打开对应应用的窗口，无论是否在其他工作区活动
		initial_workspace_tracking = false,
	},

	-- 按键设置
	-- See https://wiki.hypr.land/Configuring/Basics/Variables/#binds
	binds = {
		scroll_event_delay = 0,
		-- 更换工作区将隐藏特殊工作区
		hide_special_on_workspace_change = true,
		-- 允许切换本工作时返回上一个工作区
		workspace_back_and_forth = true,
	},

	-- 光标设置
	-- See https://wiki.hypr.land/Configuring/Basics/Variables/#cursor
	cursor = {
		zoom_factor = 1,
		zoom_rigid = false,
	},

	-- Xwayland 设置
	-- See https://wiki.hypr.land/Configuring/Basics/Variables/#xwayland
	xwayland = {
		-- 强制xwayland不使用缩放
		force_zero_scaling = true,
	},
})

-----------------------
---- Gestures ---------
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/
hl.gesture({ fingers = 3, direction = "swipe", action = "move" })
hl.gesture({ fingers = 3, direction = "pinch", action = "fullscreen" })
hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })

-----------------------
---- Animations -------
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
-- Curves
hl.curve("expressiveFastSpatial", {
	type = "bezier",
	points = { { 0.42, 1.67 }, { 0.21, 0.90 } },
})
hl.curve("expressiveSlowSpatial", {
	type = "bezier",
	points = { { 0.39, 1.29 }, { 0.35, 0.98 } },
})
hl.curve("expressiveDefaultSpatial", {
	type = "bezier",
	points = { { 0.38, 1.21 }, { 0.22, 1.00 } },
})
hl.curve("emphasizedDecel", {
	type = "bezier",
	points = { { 0.05, 0.7 }, { 0.1, 1 } },
})
hl.curve("emphasizedAccel", {
	type = "bezier",
	points = { { 0.3, 0 }, { 0.8, 0.15 } },
})
hl.curve("standardDecel", {
	type = "bezier",
	points = { { 0, 0 }, { 0, 1 } },
})
hl.curve("menu_decel", {
	type = "bezier",
	points = { { 0.1, 1 }, { 0, 1 } },
})
hl.curve("menu_accel", {
	type = "bezier",
	points = { { 0.52, 0.03 }, { 0.72, 0.08 } },
})
hl.curve("stall", {
	type = "bezier",
	points = { { 1, -0.1 }, { 0.7, 0.85 } },
})
-- Configs
-- windows
hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 3,
	bezier = "emphasizedDecel",
	style = "popin 80%",
})
hl.animation({
	leaf = "fadeIn",
	enabled = true,
	speed = 3,
	bezier = "emphasizedDecel",
})
hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 2,
	bezier = "emphasizedDecel",
	style = "popin 90%",
})
hl.animation({
	leaf = "fadeOut",
	enabled = true,
	speed = 2,
	bezier = "emphasizedDecel",
})
hl.animation({
	leaf = "windowsMove",
	enabled = true,
	speed = 3,
	bezier = "emphasizedDecel",
	style = "slide",
})
hl.animation({
	leaf = "border",
	enabled = true,
	speed = 10,
	bezier = "emphasizedDecel",
})

-- layers
hl.animation({
	leaf = "layersIn",
	enabled = true,
	speed = 2.7,
	bezier = "emphasizedDecel",
	style = "popin 93%",
})
hl.animation({
	leaf = "layersOut",
	enabled = true,
	speed = 2.4,
	bezier = "menu_accel",
	style = "popin 94%",
})
-- fade
hl.animation({
	leaf = "fadeLayersIn",
	enabled = true,
	speed = 0.5,
	bezier = "menu_decel",
})
hl.animation({
	leaf = "fadeLayersOut",
	enabled = true,
	speed = 2.7,
	bezier = "stall",
})
-- workspaces
hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 7,
	bezier = "menu_decel",
	style = "slide",
})
-- specialWorkspace
hl.animation({
	leaf = "specialWorkspaceIn",
	enabled = true,
	speed = 2.8,
	bezier = "emphasizedDecel",
	style = "slidevert",
})
hl.animation({
	leaf = "specialWorkspaceOut",
	enabled = true,
	speed = 1.2,
	bezier = "emphasizedAccel",
	style = "slidevert",
})
-- zoom
hl.animation({
	leaf = "zoomFactor",
	enabled = true,
	speed = 3,
	bezier = "standardDecel",
})
