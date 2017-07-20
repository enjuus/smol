#!/usr/bin/env bash
accent="%{F#733b35 }"
reset="%{F#e3c8a3 }"
cur=`xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}'`
tot=`xprop -root _NET_NUMBER_OF_DESKTOPS | awk '{print $3}'`

for w in `seq 0 $((cur - 1))`; do line="${line}$text ◽"$reset; done
line="${line}$accent◾"$reset
for w in `seq $((cur + 2)) $tot`; do line="${line}$text ◽"$reset; done
echo $line
