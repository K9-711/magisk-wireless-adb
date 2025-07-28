#!/system/bin/sh
# Enable ADB over TCP/IP on boot using post-fs-data

sleep 5
setprop service.adb.tcp.port 5555
stop adbd
start adbd
