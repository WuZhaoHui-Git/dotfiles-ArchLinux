--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/

-- Disable blur for every window
hl.window_rule({ match = { class = ".*" }, no_blur = true })
-- No shadow for tiled windows (matches windows that are not float oning).
hl.window_rule({ match = { float = true }, no_shadow = true })

-- Floating
-- File Choose
hl.window_rule({
	match = {
		title = "^(Open File|Select a File|Choose o wallpaper|Open Folder|Save As|Library|File Upload)(.*)$",
	},
	float = true,
	center = true,
})
hl.window_rule({
	match = {
		title = "^(.*)wants to (save|open)&",
	},
	float = true,
	center = true,
})
hl.window_rule({
	match = {
		title = "^(org.freedesktop.impl.portal.desktop.)[\\w]+",
	},
	float = true,
	center = true,
	size = { "monitor_w*0.65", "monitor_h*0.65" },
})
-- Applet
hl.window_rule({
	match = {
		title = "^(.*)(pavucontrol|nm-connection-editor|blueman-manager|plasmawindowed)(.*)$",
	},
	float = true,
	center = true,
	size = { "monitor_w*0.5", "monitor_h*0.5" },
})
-- Other
hl.window_rule({ match = { class = "kcm_(.*)" }, float = true })
hl.window_rule({ match = { class = "(.*)bluedevilwizard" }, float = true })
hl.window_rule({ match = { class = ".*Welcome" }, float = true })
hl.window_rule({ match = { class = "^(Zotrro)$" }, float = true, size = { "monitor_w * 0.45", "monitor_h * 0.45" } })
-- Move
-- kde-material-you-colors spawns a window when changing dark/light theme. This is to make sure it doesn't interfere at all.
hl.window_rule({
	match = { class = "^(plasma-changeicons)$" },
	float = true,
	no_initial_focus = true,
	move = { 999999, 999999 },
})
-- stupid dolphin copy
hl.window_rule({ match = { title = "^(Copying - Dolphin)$" }, move = { 40, 80 } })
-- Tiling
hl.window_rule({ match = { class = "^dev\\.warp\\.Warp$" }, tile = true })

-- Picture-in-Picture
hl.window_rule({
	match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
	float = true,
	keep_aspect_ratio = true,
	move = { "monitor_w*0.73", "monitor_h*0.72" },
	size = { "monitor_w*0.25", "monitor_h*0.25" },
	pin = true,
})

-- --- Tearing ---
hl.window_rule({ match = { title = ".*\\.exe" }, immediate = true })
hl.window_rule({ match = { title = ".*minecraft.*" }, immediate = true })
hl.window_rule({ match = { class = "^(steam_app).*" }, immediate = true })

-- Apps
-- -- QQ
hl.window_rule({ match = { class = "^(QQ)$" }, tag = "+QQ" })
hl.window_rule({
	match = { tag = "QQ", float = true },
	center = true,
	size = { "monitor_w*0.55", "monitor_h*0.55" },
})
hl.window_rule({ match = { tag = "QQ" }, workspace = "special:special" })

-- -- 微信
hl.window_rule({ match = { class = "^(wechat)$" }, tag = "+wechat" })
hl.window_rule({
	match = { tag = "wechat", title = "微信" },
	tile = true,
	workspace = 7,
})
hl.window_rule({
	match = { tag = "wechat", title = "negative:^(朋友圈|微信|设置|聊天文件|预览|图片和视频)[\\w]*" },
	no_blur = true,
	no_shadow = true,
	border_size = 0,
})
hl.window_rule({
	match = { tag = "wechat", title = "微信发送给" },
	no_blur = true,
	no_shadow = true,
	border_size = 0,
})
hl.window_rule({
	match = { title = "(朋友圈|设置|聊天文件|预览|图片和视频)" },
	float = true,
	center = true,
})
hl.window_rule({
	match = { title = "(设置|聊天文件|预览|图片和视频)" },
	size = { "monitor_w*0.65", "monitor_h*0.65" },
})

-- -- 微信开发者
hl.window_rule({ match = { class = "^(wechat-devtools)$" }, tile = true })

-- -- Telegram
hl.window_rule({ match = { class = "^(org.telegram.desktop)$" }, tag = "+telegram" })
hl.window_rule({ match = { tag = "telegram" }, workspace = "special:special" })
hl.window_rule({
	match = { tag = "telegram", title = "媒体查看器" },
	float = true,
	center = true,
	size = { "monitor_w*0.65", "monitor_h*0.65" },
})

-- -- Discord
hl.window_rule({ match = { class = "^(D|d)iscord$" }, tag = "+discord" })
hl.window_rule({ match = { tag = "discord" }, workspace = "special:special" })

-- -- microsoft-edge
hl.window_rule({ match = { class = "^(microsoft-edge)$" }, tag = "+edge" })
hl.window_rule({
	match = { tag = "edge", title = "^(File Preview).*" },
	float = true,
	center = true,
	size = { "monitor_w*0.75", "monitor_h*0.75" },
})

-- -- g4music
hl.window_rule({ match = { class = ".*(g4music)$" }, tag = "+g4music" })
hl.window_rule({ match = { tag = "g4music" }, workspace = 10 })

-- -- Jetbrains apps
hl.window_rule({ match = { class = "^(jetbrains)[\\W\\w]*" }, tag = "+jetbrains" })
hl.window_rule({
	match = {
		tag = "jetbrains",
		title = "(Setting|设置|Project Structure|项目结构|Run/Debug Configurations|运行/调试配置)",
		float = true,
	},
	center = true,
	size = { "monitor_w*0.65", "monitor_h*0.65" },
})
hl.window_rule({ match = { tag = "jetbrains", xwayland = true }, no_initial_focus = true })

-- --------- Workspace rules ------------------
hl.workspace_rule({ workspace = "special:special", gaps_out = 30 })

-- --------- Layer rules ----------------------
hl.layer_rule({ match = { namespace = ".*" }, xray = true })
hl.layer_rule({
	match = { namespace = "(walker|rofi|selection|overview|anyrun|indicator|osk|hyprpicker|noanim)" },
	no_anim = true,
})
hl.layer_rule({ match = { namespace = "(gtk-layer-shell|launcher|notifications)" }, blur = true })
hl.layer_rule({ match = { namespace = "logout_dialog" }, blur = true })
hl.layer_rule({ match = { namespace = "gtk-layer-shell" }, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "launcher" }, ignore_alpha = 0.5 })
hl.layer_rule({ match = { namespace = "notifications" }, ignore_alpha = 0.69 })
