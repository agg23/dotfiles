#!/usr/bin/env sh

# Terminate already running sxhkd instances
killall -q sxhkd

# Wait until the processes have been shut down
while pgrep -x sxhkd >/dev/null; do sleep 1; done

# Launch sxhkd
sxhkd &