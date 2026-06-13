-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

-- ########### XDG ###############
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- ########### Wayland ###########
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")

-- ####### Local language ########
hl.env("LANG", "zh_CN.UTF-8")
hl.env("LC_CTYPE", "zh_CN.UTF-8")

-- ########### Themes ############
hl.env("QT_QPA_PLATFORMTHEME", "kde")
hl.env("XCURSOR_THEME", "Bibata-Modern-Amber")
hl.env("XCURSOR_SIZE", "40")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Amber")
hl.env("HYPRCURSOR_SIZE", "40")

-- ########### Others ############
-- dolphin 选择启动程序问题
hl.env("XDG_MENU_PREFIX", "plasma-")
hl.env("GTK_USE_PORTAL", "1")
