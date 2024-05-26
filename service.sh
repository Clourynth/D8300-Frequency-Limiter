MODDIR=${0%/*}
sleep 90
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo 902400 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
echo 1651200 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq
echo 1708800 > /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq
exit 0