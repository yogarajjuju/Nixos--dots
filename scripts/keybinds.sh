#!/bin/sh

cat << "EOF" | rofi -dmenu -i -p "Hyprland Keybindings" -theme-str '
window { width: 600px; }
listview { lines: 15; }
'

SUPER + T        → Terminal (kitty)
SUPER + E        → File Manager (dolphin)
SUPER + F        → Browser (firefox)
SUPER + C        → Code Editor (VS Code)

SUPER + A        → App Launcher (rofi)
SUPER + TAB      → Window Switcher
SUPER + Q        → Close Window
ALT   + F4       → Close Window

SUPER + W        → Toggle Floating
ALT   + ENTER    → Fullscreen
SUPER + J        → Toggle Split

SUPER + 1..9     → Switch Workspace
SUPER + SHIFT+1..9 → Move Window to Workspace

SUPER + Arrow    → Move Focus
SUPER + SHIFT + Arrow → Resize Window

PRINT            → Screenshot (full)
SUPER + P        → Screenshot (area)

SUPER + L        → Lock Screen
SUPER + BACKSPACE→ Logout Menu

EOF
