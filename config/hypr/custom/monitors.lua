------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- 内置显示器作为主屏
-- hl.monitor({
-- 	-- 设备
-- 	output = "eDP-1",
-- 	-- 分辨率@刷新率
-- 	mode = "1680x1050@60",
-- 	-- 屏幕位置
-- 	position = "0x0",
-- 	-- 缩放率
-- 	scale = "1",
-- 	-- 屏幕旋转
-- 	transform = 0,
-- })
-- hl.monitor({
-- 	-- 设备
-- 	output = "HDMI-A-1",
-- 	-- 分辨率@刷新率
-- 	mode = "1920x1080@60",
-- 	-- 屏幕位置
-- 	position = "1680x0",
-- 	-- 缩放率
-- 	scale = "1.25",
-- 	-- 屏幕旋转
-- 	transform = 0,
-- })

-- 外接显示器作为主屏
hl.monitor({
	-- 设备
	output = "HDMI-A-1",
	-- 分辨率@刷新率
	mode = "1920x1080@144",
	-- 屏幕位置
	position = "0x0",
	-- 缩放率
	scale = "1",
	-- 屏幕旋转
	transform = 0,
})
hl.monitor({
	-- 设备
	output = "eDP-1",
	-- 分辨率@刷新率
	mode = "preferred",
	-- 屏幕位置
	position = "1920x0",
	-- 缩放率
	scale = "auto",
	-- 屏幕旋转
	transform = 0,
})
