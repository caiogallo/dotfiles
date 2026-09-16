#!/usr/bin/env bash
# Layout de teclado por janela: 'us intl' global + 'us' puro para o IntelliJ
# (resolve dead keys quebradas em apps Java/XWayland)

# 1. Instalar o daemon hyprland-per-window-layout
paru -S --noconfirm hyprland-per-window-layout

# 2. Config do daemon (teclados reais + IntelliJ usa layout index 1 = us puro)
mkdir -p ~/.config/hyprland-per-window-layout
cat > ~/.config/hyprland-per-window-layout/options.toml <<'EOF'
# Layout per-window: foca no IntelliJ -> usa us puro (index 1)
keyboards = [
  "keychron--keychron-link--keyboard",
  "logitech-wireless-keyboard-pid:4023",
]

[[default_layouts]]
1 = [
  "jetbrains-idea",
  "jetbrains.*",
]
EOF