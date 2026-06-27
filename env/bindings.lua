
---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"
local terminal    = "kitty"
local fileManager = "dolphin"
local menu        = "wofi -i --show drun"

-- Screenshot
hl.bind(mainMod .. " + PRINT",        hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("PRINT",                      hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind(mainMod .. " + SHIFT + HOME", hl.dsp.exec_cmd("hyprshot -m region"))

-- Basic binds
hl.bind(mainMod .. " + F",           hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + Q",           hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + X",           hl.dsp.window.kill())
hl.bind(mainMod .. " + SHIFT + L",   hl.dsp.exit())
hl.bind(mainMod .. " + E",           hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V",           hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R",           hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P",           hl.dsp.window.pseudo())
-- hl.bind(mainMod .. " + SHIFT + P", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + M",           hl.dsp.workspace.move({ monitor = "+1" }))

-- Move focus with mainMod + arrow keys
-- hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
-- hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
-- hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
-- hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + S",           hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S",   hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down",  hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",    hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272",   hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273",   hl.dsp.window.resize(), { mouse = true })

local osdclient = 'swayosd-client --monitor "$(hyprctl monitors -j | jq -r \'.[] | select(.focused).name\')"'

-- Laptop multimedia keys for volume and LCD brightness (with OSD)
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd(osdclient .. " --output-volume raise"),   { locked = true, repeating = true, description = "Volume up" })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd(osdclient .. " --output-volume lower"),   { locked = true, repeating = true, description = "Volume down" })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd(osdclient .. " --output-volume mute-toggle"), { locked = true, repeating = true, description = "Mute" })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd(osdclient .. " --input-volume mute-toggle"),   { locked = true, repeating = true, description = "Mute mic" })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd(osdclient .. " --brightness raise"),       { locked = true, repeating = true, description = "Brightness up" })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(osdclient .. " --brightness lower"),       { locked = true, repeating = true, description = "Brightness down" })

-- Precise 1% multimedia adjustments with Alt modifier
hl.bind("ALT + XF86AudioRaiseVolume",  hl.dsp.exec_cmd(osdclient .. " --output-volume +1"), { locked = true, repeating = true, description = "Volume up precise" })
hl.bind("ALT + XF86AudioLowerVolume",  hl.dsp.exec_cmd(osdclient .. " --output-volume -1"), { locked = true, repeating = true, description = "Volume down precise" })
hl.bind("ALT + XF86MonBrightnessUp",   hl.dsp.exec_cmd(osdclient .. " --brightness +1"),    { locked = true, repeating = true, description = "Brightness up precise" })
hl.bind("ALT + XF86MonBrightnessDown", hl.dsp.exec_cmd(osdclient .. " --brightness -1"),    { locked = true, repeating = true, description = "Brightness down precise" })

-- Requires playerctl
hl.bind("XF86AudioNext",   hl.dsp.exec_cmd(osdclient .. " --playerctl next"),       { locked = true, description = "Next track" })
hl.bind("XF86AudioPause",  hl.dsp.exec_cmd(osdclient .. " --playerctl play-pause"), { locked = true, description = "Pause" })
hl.bind("XF86AudioPlay",   hl.dsp.exec_cmd(osdclient .. " --playerctl play-pause"), { locked = true, description = "Play" })
hl.bind("XF86AudioPrev",   hl.dsp.exec_cmd(osdclient .. " --playerctl previous"),    { locked = true, description = "Previous track" })

-- Laptop LID
hl.bind("switch:on:Lid Switch",  hl.dsp.exec_cmd("/home/caio/.local/bin/lid-switch close"), { locked = true })
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("/home/caio/.local/bin/lid-switch open"),  { locked = true })

-- Toggle waybar
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("pkill -USR1 waybar"))

-- Toggle touchpad
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("/home/caio/.local/bin/touchpad-switch"))

-- Laptop display switch
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("/home/caio/.local/bin/laptop-display-switch"))

-- Google search widget
hl.bind(mainMod .. " + G",           hl.dsp.exec_cmd("/home/caio/.local/bin/google-widget"))
hl.bind(mainMod .. " + SHIFT + Y",   hl.dsp.exec_cmd("uwsm app -- chromium --app=https://youtube.com --class=YouTube"))
hl.bind(mainMod .. " + SHIFT + D",   hl.dsp.exec_cmd("uwsm app -- chromium --app=https://discord.com --class=Discord"))
hl.bind(mainMod .. " + SHIFT + X",   hl.dsp.exec_cmd("uwsm app -- chromium --app=https://x.com --class=X"))
hl.bind(mainMod .. " + SHIFT + B",   hl.dsp.exec_cmd("uwsm app -- chromium --app=https://vault.bitwarden.com/ --class=Bitwarden"))
hl.bind(mainMod .. " + SHIFT + R",   hl.dsp.exec_cmd("uwsm app -- chromium --app=https://reddit.com --class=Reddit"))
hl.bind(mainMod .. " + SHIFT + H",   hl.dsp.exec_cmd("uwsm app -- chromium --app=https://news.ycombinator.com --class=HackerNews"))
