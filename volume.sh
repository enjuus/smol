#!/bin/bash

outstr=""
volout=$($HOME/.bin/volume)

if [[ "${volout}" != "MUTE" ]]; then
  outstr="${outstr}⮞ "
else
  outstr="${outstr}⮝ "
  volout="mute"
fi

outstr="%{F#C3665A }"${outstr}"%{F#313131 }"${volout}


echo ${outstr}"  "
