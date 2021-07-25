#!/bin/bash
# just log the output in a log file so the results can be used by other scripts

logfile="/tmp/weather_board.log"
weatherdevice="/dev/i2c-0"
date
if [ -e $weatherdevice ]; then
  python3 ./weather_board_log.py $weatherdevice > $logfile
else
  echo "Device $weatherdevice could not be found."
fi	

