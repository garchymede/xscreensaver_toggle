#! /bin/bash

if [ $(xdg-screensaver status) = "disabled" ]; then
	echo "enabling screensaver";
	(xscreensaver -nosplash &);
	(notify-send 'Screensaver' 'The screensaver has been enabled. Welcome back from darkness' --icon=dialog-information);

else
	(xscreensaver-command -exit);
	(notify-send 'Screensaver' 'The screensaver has been disabled, enjoy your video.' --icon=dialog-information);
fi
