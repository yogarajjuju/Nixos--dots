#!/usr/bin/env bash

QUOTES=(
  "Stay hungry, stay foolish."
  "Focus beats motivation."
  "Small steps every day."
  "Discipline > Motivation."
  "Build systems, not goals."
)

echo "${QUOTES[RANDOM % ${#QUOTES[@]}]}"
