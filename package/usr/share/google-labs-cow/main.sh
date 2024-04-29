#!/bin/bash

cd /usr/share/google-labs-cow/
python3 -m http.server 8089 &
sleep 2
xdg-open http://localhost:8089 &
sleep 2
xdotool search --sync --onlyvisible --class "google-chrome" windowactivate key F11
