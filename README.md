# 🧊 Hyprland Rice – NixOS (by juju)

A clean, minimal, and functional **Hyprland setup on NixOS**, focused on:
- stability
- clarity
- productivity
- modern aesthetics

This repo contains my **daily-driver configuration**, backed up for easy restore and sharing.

---

## 🖥️ System Info
- **OS**: NixOS 25.11
- **WM**: Hyprland
- **Bar**: Waybar
- **Launcher**: Rofi
- **Terminal**: Kitty
- **Shell**: Zsh
- **Notifications**: Mako
- **Wallpaper**: Hyprpaper
- **Lockscreen**: Hyprlock
- **GPU**: NVIDIA GTX 1650 (Laptop)
- **CPU**: AMD Ryzen 5 5600H

---

## 📁 Repo Structure

```text
hyprland-dotfiles/
├── hypr/          # Hyprland configs (hyprland.conf, binds, wallpaper)
├── waybar/        # Waybar config + style
├── rofi/          # Rofi themes and configs
├── kitty/         # Kitty terminal config
├── scripts/       # Helper scripts (keybinds, utilities)
├── wallpapers/    # Sample wallpapers
└── README.md
## 🧩 NixOS Configuration

The `nixos/` directory contains:

- `configuration.nix` – main system configuration
- `hardware-configuration.nix` – hardware-specific settings

⚠️ **Note:**  
Before using on another system, review:
- disk layout
- GPU drivers
- hostName
- hardware options
