-- Per-output monitor rules

hl.monitor({ output = "DP-1",   mode = "2560x1080@75",  position = "0x0",     scale = 1 })
hl.monitor({ output = "eDP-1",  mode = "2880x1800@120", position = "2560x95",  scale = 2 })
hl.monitor({ output = "DP-2",   mode = "1920x1080@144", position = "360x1080", scale = 1,
             transform = 0, bitdepth = 8, cm = "srgb", sdrbrightness = 2 })

-- Default fallback for unlisted outputs
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })