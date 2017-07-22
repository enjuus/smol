#!/usr/bin/env fish

set font '-*-lemon-medium-r-*-*-*-*-*-*-m-*-iso10646-1'
set px 50
set ph 25
set pw 200
set py 25



if test -z (pgrep -f 'admiral -c')
  admiral -c $HOME/.smol/admiral.toml | lemonbar -p -f "$font" -g $pw"x$ph+$px+$py" -B '#eeeeee' -F '#2e2e2e' -b | sh
else
  pkill -f 'admiral -c'
  pkill -f 'lemonbar -p'
  pkill -f '.smol/admiral.sh'
end
