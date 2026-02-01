#!/usr/bin/env bash

WALL_DIR="$HOME/Pictures/walls"

WALL=$(find "$WALL_DIR" -type f | shuf -n 1)

swww img "$WALL" \
  --transition-type grow \
  --transition-duration 1 \
  --transition-fps 60
