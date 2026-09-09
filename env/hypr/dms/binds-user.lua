-- Optional per-user keybind overrides (managed by DMS). Loaded after default binds.
-- Migrated from Hyprland bindings.lua.

local mainMod = "SUPER"

-- Apps and launcher
hl.bind(mainMod .. " + Q",           hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + E",           hl.dsp.exec_cmd("dolphin"))
hl.bind(mainMod .. " + R",           hl.dsp.exec_cmd("dms ipc call spotlight toggle"))
hl.bind(mainMod .. " + G",           hl.dsp.exec_cmd("/home/caio/.local/bin/google-widget"))

-- Window management
hl.bind(mainMod .. " + X",           hl.dsp.window.kill())
hl.bind(mainMod .. " + V",           hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P",           hl.dsp.window.pseudo())
hl.bind(mainMod .. " + M",           hl.dsp.workspace.move({ monitor = "+1" }))
hl.bind(mainMod .. " + SHIFT + L",   hl.dsp.exit())

-- Workspaces (override DMS defaults 1-9, add 0 = workspace 10)
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key,           hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key,   hl.dsp.window.move({ workspace = i }))
end

-- Scratchpad
hl.bind(mainMod .. " + S",           hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S",   hl.dsp.window.move({ workspace = "special:magic" }))

-- Screenshots (region via DMS)
hl.bind(mainMod .. " + SHIFT + HOME", hl.dsp.exec_cmd("dms screenshot region"))

-- Laptop helpers
hl.bind(mainMod .. " + T",           hl.dsp.exec_cmd("/home/caio/.local/bin/touchpad-switch"))
hl.bind(mainMod .. " + O",           hl.dsp.exec_cmd("/home/caio/.local/bin/laptop-display-switch"))

-- Toggle DMS top bar
hl.bind(mainMod .. " + B",           hl.dsp.exec_cmd("dms ipc call bar toggle index 0"))

-- Laptop LID
hl.bind("switch:on:Lid Switch",  hl.dsp.exec_cmd("/home/caio/.local/bin/lid-switch close"), { locked = true })
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("/home/caio/.local/bin/lid-switch open"),  { locked = true })

-- Precise 1% multimedia adjustments (standard keys are handled by DMS defaults)
hl.bind("ALT + XF86AudioRaiseVolume",  hl.dsp.exec_cmd("dms ipc call audio increment 1"),         { locked = true, repeating = true })
hl.bind("ALT + XF86AudioLowerVolume",  hl.dsp.exec_cmd("dms ipc call audio decrement 1"),         { locked = true, repeating = true })
hl.bind("ALT + XF86MonBrightnessUp",   hl.dsp.exec_cmd([[dms ipc call brightness increment 1 ""]]), { locked = true, repeating = true })
hl.bind("ALT + XF86MonBrightnessDown", hl.dsp.exec_cmd([[dms ipc call brightness decrement 1 ""]]), { locked = true, repeating = true })

-- Chromium PWA shortcuts
hl.bind(mainMod .. " + SHIFT + Y", hl.dsp.exec_cmd("uwsm app -- chromium --app=https://youtube.com --class=YouTube"))
hl.bind(mainMod .. " + SHIFT + D", hl.dsp.exec_cmd("uwsm app -- chromium --app=https://discord.com --class=Discord"))
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.exec_cmd("uwsm app -- chromium --app=https://x.com --class=X"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("uwsm app -- chromium --app=https://vault.bitwarden.com/ --class=Bitwarden"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("uwsm app -- chromium --app=https://reddit.com --class=Reddit"))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.exec_cmd("uwsm app -- chromium --app=https://news.ycombinator.com --class=HackerNews"))