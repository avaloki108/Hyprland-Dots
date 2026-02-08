#!/usr/bin/env bash

# Launch Alacritty and auto-enter a terminal multiplexer session.
if command -v zellij >/dev/null 2>&1; then
  exec alacritty --command zellij
fi

if command -v tmux >/dev/null 2>&1; then
  exec alacritty --command tmux new-session -A -s main
fi

exec alacritty
