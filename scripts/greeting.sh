#!/usr/bin/env bash

HOUR=$(date +%H)

if [ "$HOUR" -ge 5 ] && [ "$HOUR" -lt 12 ]; then
  echo "Good Morning ☀️"
elif [ "$HOUR" -ge 12 ] && [ "$HOUR" -lt 17 ]; then
  echo "Good Afternoon 🌤️"
elif [ "$HOUR" -ge 17 ] && [ "$HOUR" -lt 21 ]; then
  echo "Good Evening 🌆"
else
  echo "Good Night 🌙"
fi

