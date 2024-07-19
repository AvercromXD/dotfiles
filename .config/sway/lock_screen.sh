
#!/bin/sh

# Credit to the following for comming up with this:
# https://code.krister.ee/lock-screen-in-sway/
# To Do: The fancier screen lock mentioned on that page might be cool to try.

# Times the screen off and puts it to background
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &

#swaylock --effect-pixelate 5 --clock --screenshots --indicator --grace 3
swaylock \
	--screenshots \
	--clock \
	--indicator \
	--indicator-radius 100 \
	--indicator-thickness 7 \
	--effect-blur 7x5 \
	--effect-vignette 0.5:0.5 \
	--grace 2 \

# Kills last background task so idle timer doesn't keep running
kill %%

