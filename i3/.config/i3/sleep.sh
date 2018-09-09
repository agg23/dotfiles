#!/usr/bin/env sh

# Terminate already running autolock instances
killall -q xautolock

# Wait until the processes have been shut down
while pgrep -x xautolock >/dev/null; do sleep 1; done

# Launch autolock
xautolock -detectsleep -notify 3300 -notifier "xset dpms force off" -time 60 -locker "systemctl suspend" &