-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
	-- 密码存储器
	-- hl.exec_cmd("echo 1 | keepassxc --minimized --keyfile ~/Documents/keepassxc.keyx --pw-stdin ~/Documents/密码.kdbx")
	hl.exec_cmd("/usr/lib/pam_kwallet_init")
	-- 用户认证窗口，提升root权限支持
	hl.exec_cmd(
		"/usr/lib/hyprpolkitagent/hyprpolkitagent || /usr/lib/polkit-kde-authentication-agent-1 || /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
	)
	-- 启用xdg-disktop-protal-hypeland所需环境
	hl.exec_cmd("dbus-update-activation-environment --all")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	-- 启用插件
	hl.exec_cmd("hyprpm reload")
	-- xwayland 缩放
	hl.exec_cmd("xrdb ~/.Xresources")

	-- 输入法
	hl.exec_cmd("fcitx5 -r")
	-- 状态栏
	hl.exec_cmd("waybar")
	-- 壁纸
	hl.exec_cmd("hyprpaper")
	-- 电脑空闲、锁屏、挂起
	hl.exec_cmd("hypridle")
	-- 剪贴板
	hl.exec_cmd("wl-paste --watch cliphist store")
	hl.exec_cmd("cliphist list | head -n -256 | cliphist delete")
	-- 通知
	hl.exec_cmd("mako")
	-- OSD 通知
	hl.exec_cmd("swayosd-server")
	-- 网络
	hl.exec_cmd("nm-applet")
	-- 代理
	-- hl.exec_cmd("clash-verge")
	-- 蓝牙
	hl.exec_cmd("blueman-applet")
	-- aria2 下载器
	hl.exec_cmd("motrix-next")
	-- 音乐播放守护进程
	hl.exec_cmd("systemctl --user start mpd")
	hl.exec_cmd("systemctl --user start mpdris2-rs")
	-- 共享 xwayland 屏幕
	-- hl.exec_cmd("xwaylandvideobridge")
	hl.exec_cmd("jrebel-license-active-server-linux_amd64")
end)
