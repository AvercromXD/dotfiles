#!/bin/bash
FILENAME="screenshot-`date +%F-%T`"
grim -g "$(slurp)" ~/Pictures/Screenshots/$FILENAME.png
wl-copy < ~/Pictures/Screenshots/$FILENAME.png
