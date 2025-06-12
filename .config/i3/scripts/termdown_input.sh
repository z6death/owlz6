#!/bin/bash

echo -n "Enter countdown time (e.g. 5m, 1h30m): "
read TIME

if [ -n "$TIME" ]; then
    termdown "$TIME"
    # After termdown finishes
    cvlc --no-video ~/video/focus.mp4
else
    echo "No time entered. Exiting..."
    sleep 2
fi
