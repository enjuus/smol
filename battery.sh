#!/usr/bin/env fish
# skr0tm at protonmail dot com
# color of text
# current battery percentage
set battery (acpi --battery | cut -d, -f2)
set checkbat (echo $battery | cut -d% -f1)
if test $checkbat -le 20
  set icon ⮐
else if test $checkbat -le 40
  set icon ⮑
else if test $checkbat -le 60
  set icon ⮏
else if test $checkbat -le 100
  set icon ⮒
end
echo "  %{F#aa8574 }$icon%{F#2e2e2e }$battery  "


