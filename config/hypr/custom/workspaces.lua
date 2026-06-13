-- See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- 内置显示器作为主屏
-- for i = 1, 10 do
-- 	if i > 6 then
-- 		hl.workspace_rule({ workspace = i, monitor = "HDMI-A-1" })
-- 	else
-- 		hl.workspace_rule({ workspace = i, monitor = "eDP-1" })
-- 	end
-- end

-- 外接显示器作为主屏
for i = 1, 10 do
	if i > 6 then
		hl.workspace_rule({ workspace = i, monitor = "eDP-1" })
	else
		hl.workspace_rule({ workspace = i, monitor = "HDMI-A-1" })
	end
end
