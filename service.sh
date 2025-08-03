#!/system/bin/sh

# Wait for system boot complete
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# Keep retrying for 1 minute
end_time=$(( $(date +%s) + 60 ))
while [ $(date +%s) -lt $end_time ]; do
    current_port=$(getprop service.adb.tcp.port)
    if [ "$current_port" != "5555" ]; then
        echo "$(date): Re-enabling ADB TCP" >> /sdcard/wireless_adb_log.txt
        setprop service.adb.tcp.port 5555
        stop adbd
        start adbd
    fi
    sleep 5
done

echo "$(date): Finished retry loop" >> /sdcard/wireless_adb_log.txt
