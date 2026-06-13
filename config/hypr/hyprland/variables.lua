local M = {}

-- 文本编辑器
M.editor = "nvim"
-- 命令行工具
M.terminal = "kitty"
-- 浏览器
M.browser = "microsoft-edge-stable"
-- 图形文件管理器
M.guiFileManager = "dolphin"
-- 命令行文件管理器
M.tuiFileManager = M.terminal .. " -T yazi yazi "
-- 应用程序运行菜单
-- M.applicationLaucher = "pkill rofi || rofi -show durn"
M.applicationLaucher = "pkill fuzzel || fuzzel"
-- 剪贴板选择菜单
-- M.clipboard = 'pkill rofi || cliphist list | rofi -dmenu -p "剪贴板" | cliphist decode | wl-copy'
M.clipboard = "pkill fuzzel || cliphist list | fuzzel --dmenu | cliphist decode | wl-copy"
-- emoji 选择菜单
-- M.emojiPicker = "rofi -modi emoji -show emoji"
M.emojiPicker = "fuzzel-emoji copy"
-- 屏幕显示系统状态
M.osdClient = "swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name')"

-- 修改光标处缩放比例
M.zoom = function(value)
	local zoomValue = hl.get_config("cursor:zoom_factor")
	if (zoomValue + value) >= 5 then
		hl.config({ cursor = { zoom_factor = 5 } })
	elseif (zoomValue + value) <= 1 then
		hl.config({ cursor = { zoom_factor = 1 } })
	else
		hl.config({ cursor = { zoom_factor = zoomValue + value } })
	end
end

-- 工作区分组
M.workspaceGroup = function(value)
	local groupSize = 10
	local currentWorkspace = hl.get_active_workspace().id
	return math.floor((currentWorkspace - 1) / groupSize) * groupSize + value
end

M.clossAllWindows = function()
	local allWindows = hl.get_windows()
	for _, win in ipairs(allWindows) do
		hl.dispatch(hl.dsp.focus({ window = win }))
		hl.dispatch(hl.dsp.window.close())
	end
end

return M
