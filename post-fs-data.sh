#!/system/bin/sh

# Log to see if script runs
echo "Wireless ADB module started at $(date)" >> /sdcard/wireless_adb_log.txt

sleep 5
setprop service.adb.tcp.port 5555
stop adbd
start adbd

echo "Wireless ADB module finished at $(date)" >> /sdcard/wireless_adb_log.txt
