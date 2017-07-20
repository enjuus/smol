#!/usr/bin/env fish

xtitle -s | while read window
		echo "  $window"| sed 's/fish //'
end

