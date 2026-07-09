-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("waybar -c ~/.config/waybar/config.jsonrc -s ~/.config/waybar/style.css")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hyprlauncher -d")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)
