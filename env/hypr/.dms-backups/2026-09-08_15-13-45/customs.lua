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
