#!/bin/sh

# terminate already running bar
killall -q polybar

# Wait

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Re-launch

polybar example &


