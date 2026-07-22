---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

local ipc = "noctalia msg "

-- Core binds
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. "+S", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))
hl.bind(mainMod .. "+comma", hl.dsp.exec_cmd(ipc .. "settings-toggle"))

-- Media keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"))

-- Noctalia Settings
hl.window_rule({
	match = { class = "dev.noctalia.Noctalia" },
	float = true,
	size = { 1080, 920 },
})

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd([[bash -c "$HOME/.local/bin/launch-or-focus ghostty"]]))
local closeWindowBind = hl.bind(mainMod .. " + W", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.exec_cmd("ghostty -e yazi"))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(
	mainMod .. " + SHIFT + B",
	hl.dsp.exec_cmd([[bash -c "$HOME/.local/bin/launch-or-focus zen 'uwsm-app -- zen.desktop'"]])
)
hl.bind(
	mainMod .. " + SHIFT + P",
	hl.dsp.exec_cmd("1password --ozone-platform-hint=wayland --enable-features=WaylandWindowDecorations")
)
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd([[bash -c "$HOME/.local/bin/launch-or-focus steam"]]))
hl.bind(
	mainMod .. " + SHIFT + D",
	hl.dsp.exec_cmd(
		[[bash -c "$HOME/.local/bin/launch-or-focus vesktop 'uwsm-app -- vesktop --ozone-platform-hint=auto'"]]
	)
)
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd("ghostty -e btop"))

-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only
--

hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center audio"))
hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd(ipc .. "panel-toggle session"))

hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(ipc .. "screenshot-region"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Resize floating windows with SUPER + ALT + HJKL
hl.bind(mainMod .. " + ALT + L", hl.dsp.window.resize({ x = 50, y = 0, relative = true })) -- Grow Right
hl.bind(mainMod .. " + ALT + H", hl.dsp.window.resize({ x = -50, y = 0, relative = true })) -- Shrink Left
hl.bind(mainMod .. " + ALT + K", hl.dsp.window.resize({ x = 0, y = -50, relative = true })) -- Shrink Up
hl.bind(mainMod .. " + ALT + J", hl.dsp.window.resize({ x = 0, y = 50, relative = true })) -- Grow Down
--
-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- -- Scroll through existing workspaces with mainMod + scroll
-- hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
-- hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- -- Requires playerctl
-- hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
-- hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
-- hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
-- hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
