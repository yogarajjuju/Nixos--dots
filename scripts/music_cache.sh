#!/bin/sh

CACHE="$HOME/.cache/lock-music.txt"

while true; do
  if playerctl status 2>/dev/null | grep -q Playing; then
    playerctl metadata --format " {{artist}} — {{title}}" > "$CACHE"
  else
    echo "" > "$CACHE"
  fi
  sleep 1
done
