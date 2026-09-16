# Global Rules (all sessions)

## Dotfiles / environment of Caio

- All configurations are versioned in `~/Projects/dotfiles`. Anything created or modified outside that repo (config files, systemd units, autostart entries, scripts, etc.) must be mapped back into `dotfiles` so the environment can be recreated after a format.
- For installing or removing packages/software, always create a **migration** in `install/migrations/` (never edit `install/pacman.sh` or `install/aur.sh` — those are legacy).
- Migration format: `install/migrations/migration_<timestamp>.sh`, executable (`chmod +x`), one migration per logical change.
- Migrations are run with `source install/migrate.sh && execute` (they are then moved to `install/migrations/executed/`).
- Use `sudo` inside migrations for privileged operations (`sudo pacman ...`, `sudo tee ...`, `sudo systemctl ...`). Use `sudo tee` (not `cat >`) when writing to root-owned paths. Migrations must exit 0 on success.
- `hyprland.lua` (Lua, not `.conf`) is the Hyprland entry point; per-user keybinds go in `env/hypr/dms/binds-user.lua`. Avoid duplicate keybindings with `env/hypr/dms/binds.lua`.
- DMS (`dms.service`, user service) owns the `org.freedesktop.Notifications` bus name; `swaync`, `mako`, `dunst` conflict with it. Restart DMS after installing plugins/services: `systemctl --user restart dms.service`.
- DMS replaces waybar, swaync, mako, dunst, wofi, hyprshot, fcitx5, custom quickshell.
- Power: `power-profiles-daemon` + `/usr/local/bin/charge-limit` service (sysfs, no acpi_call on this hardware).
- Android: `dankKDEConnect` plugin (Phone Connect) via KDE Connect; needs `sshfs` for file browsing; widget lives in the Control Center.