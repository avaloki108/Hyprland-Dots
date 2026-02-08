#!/usr/bin/env bash

# Prefer COSMIC launchers, fallback to rofi only if COSMIC is unavailable.
if command -v cosmic-launcher >/dev/null 2>&1; then
  exec cosmic-launcher
fi

if command -v cosmic-run >/dev/null 2>&1; then
  exec cosmic-run
fi

if command -v rofi >/dev/null 2>&1; then
  exec rofi -show drun -modi drun,run
fi

if command -v notify-send >/dev/null 2>&1; then
  notify-send -u normal "Launcher not found" "Install cosmic-launcher/cosmic-run or rofi."
fi
