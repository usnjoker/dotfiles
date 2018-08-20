#!/bin/sh -e

# Take a screenshot
scrot /tmp/screen_locked.png

# Pixellate it 10x
mogrify -scale 10% -scale 1000% /tmp/screen_locked.png

# screen locker
i3lock --clock --radius=400 --timesize=100 --datesize=100 --timepos="w/2:h/2+70" --datepos="w/2:h/2-80" --datestr="%Y-%m-%d" --datecolor=ffffffff --timecolor=ffffffff --ring-width=20 -i /tmp/screen_locked.png -t -n

# Turn the screen off after a delay.
sleep 60; pgrep i3lock && xset dpms force off