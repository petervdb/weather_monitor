#!/bin/bash
# just log the output in a log file so the results can be used by other scripts

logfile="/tmp/weather_board.log"
if [ -e $logfile ]; then
  temperature=$(awk -F ":" '/temperature/ {print $2}' $logfile)
  humidity=$(awk -F ":" '/humidity/ {print $2}' $logfile)
  pressure=$(awk -F ":" '/pressure/ {print $2}' $logfile)
  uv_index=$(awk -F ":" '/UV_index/ {print $2}' $logfile)
  altitude=$(awk -F ":" '/altitude/ {print $2}' $logfile)
  pressure=$(awk -F ":" '/pressure/ {print $2}' $logfile)
  visible=$(awk -F ":" '/Visible/ {print $2}' $logfile)
  ir=$(awk -F ":" '/IR/ {print $2}' $logfile)
  echo "OK: Temperature: ${temperature} Humidity: ${humidity} Pressure: ${pressure} Altitude: ${altitute} UV_index: ${uv_index} Lux: ${visible} IR: ${ir}|Temperature=${temperature};Humidity=${humidity};Pressure=${pressure};Altitude=${altitute};UV_index=${uv_index};Lux=${visible};IR=${ir}"
else
  echo "ERROR: No log file $logfile found."
  exit 2
fi	
exit 0
