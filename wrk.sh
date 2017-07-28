#!/bin/env fish

# config
set highlight "%{F#C2454E }"
set resetColor "%{F#021B21 }"
set fg "#021B21"
set bg "#00FFFFFF"
set font '-*-lemon-medium-r-*-*-*-*-*-*-m-*-iso10646-1'
set px 25
set py 25
set ph 25
set pw 100

if test -z (pgrep -f 'lemonbar -g 100x25')
  wrk-help | lemonbar -g 100x25+$px+$py -p -f $font -B $bg -F $fg | sh
else
  pkill -f 'lemonbar -g 100x25'
  pkill -f 'wrk-help'
end
