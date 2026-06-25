------------------
---- MONITORS ----
------------------

hl.monitor({ output = "DP-1",   mode = "2560x1080@75",  position = "0x0",      scale = 1 })
hl.monitor({ output = "eDP-1",  mode = "2880x1800@120", position = "2560x95",   scale = 1 })
hl.monitor({ output = "DP-2",   mode = "1920x1080@144", position = "360x1080",  scale = 1,
             transform = 0, bitdepth = 8, cm = "srgb", sdrbrightness = 2 })

-- hl.monitor({ output = "", mode = "preferred", position = "0x0", scale = 1 })
-- hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1, mirror = "eDP-1" })


---------------------
---- MY PROGRAMS ----
---------------------

local terminal    = "kitty"
local fileManager = "dolphin"
local menu        = "wofi -i --show drun"


-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("uwsm app -- waybar")
    hl.exec_cmd("uwsm app -- hypridle")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("uwsm app -- swayosd-server")
    hl.exec_cmd("uwsm app -- fcitx5 --disable notificationitem")
end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in        = 5,
        gaps_out       = 20,
        border_size    = 1,
        col = {
            active_border   = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },
        resize_on_border = false,
        allow_tearing    = false,
        layout           = "dwindle",
    },
    decoration = {
        rounding       = 10,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = "rgba(1a1a1aee)",
        },
        blur = {
            enabled  = true,
            size     = 3,
            passes   = 1,
            vibrancy = 0.1696,
        },
    },
    animations = {
        enabled = false,
    },
})

hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

hl.animation({ leaf = "global",        enabled = false, speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = false, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = false, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn",     enabled = false, speed = 4.1,  bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = false, speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = false, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = false, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = false, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = false, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = false, speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = false, speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = false, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = false, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = false, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = false, speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = false, speed = 1.94, bezier = "almostLinear", style = "fade" })

-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({ name = "no-gaps-wtv1", match = { float = false, workspace = "w[tv1]" }, border_size = 0, rounding = 0 })
-- hl.window_rule({ name = "no-gaps-f1",   match = { float = false, workspace = "f[1]" },   border_size = 0, rounding = 0 })

hl.window_rule({
    name = "jetbrains",
    match = { class = "jetbrains.*" },
    float          = true,
    no_focus       = false,
    allows_input   = true,
    no_follow_mouse = true,
})

hl.config({
    dwindle = { preserve_split = true, force_split = 2 },
    master  = { new_status = "master" },
    misc = {
        disable_hyprland_logo       = true,
        disable_splash_rendering    = true,
        disable_scale_notification  = true,
        focus_on_activate           = true,
        mouse_move_enables_dpms     = true,
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        -- kumara pro / zenbook
        -- kb_model  = "kumara_ptbr"
        -- kb_layout = "br"
        -- kb_variant = "abnt2"

        kb_layout  = "us",
        kb_variant = "intl",

        -- kb_layout  = "br,us"
        -- kb_variant = "abnt2,intl"

        kb_options  = "",
        kb_rules    = "",
        follow_mouse = 1,
        sensitivity = 0,

        touchpad = { natural_scroll = false },
    },
})

-- hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"

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


--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

hl.window_rule({
    name = "right-floating-window",
    match = { tag = "right-floating-window" },
    float           = true,
    no_initial_focus = false,
    size            = "monitor_w/4 monitor_h/4",
    move            = "monitor_w-window_w-50 monitor_h*0.04",
})

hl.window_rule({
    name = "floating-window",
    match = { tag = "floating-window" },
    float  = true,
    center = true,
    size   = "875 600",
})

hl.window_rule({
    name = "general-rules",
    match = { class = "(org.codeberg.dnkl.foot|org.gnome.NautilusPreviewer|org.gnome.Evince|com.gabm.satty|About|TUI.float|imv|mpv)" },
    tag = "+floating-window",
})

hl.window_rule({
    name = "general-rules2",
    match = { class = "(xdg-desktop-portal-gtk|sublime_text|DesktopEditors|org.gnome.Nautilus)" },
    tag = "+floating-window",
})

hl.window_rule({
    name = "general-rules3",
    match = { class = "org.gnome.Calculator" },
    float = true,
})
