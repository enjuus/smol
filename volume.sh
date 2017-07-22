#!/bin/bash

outstr=""
volout=$($HOME/.bin/volume)

if [[ "${volout}" != "MUTE" ]]; then
  outstr="${outstr}⮞ "
else
  outstr="${outstr}⮝ "
  volout="mute"
fi

outstr="%{F#aa8574 }"${outstr}"%{F#2e2e2e }"${volout}


echo ${outstr}"  "
