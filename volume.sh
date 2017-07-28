#!/bin/bash

outstr=""
volout=$($HOME/.bin/volume)

if [[ "${volout}" != "MUTE" ]]; then
  outstr="${outstr}⮞ "
else
  outstr="${outstr}⮝ "
  volout="mute"
fi

outstr="%{F#C2454E }"${outstr}"%{F#021B21 }"${volout}


echo ${outstr}"  "
