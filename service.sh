MODDIR=${0%/*}

# $1:value $2:filepaths
lock_val() {
    for p in $2; do
        if [ -f "$p" ]; then
            chown root:root "$p"
            chmod 0666 "$p"
            echo "$1" >"$p"
            chmod 0444 "$p"
        fi
    done
}

wait_until_login() {
  while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    sleep 3
  done

  test_file="/storage/emulated/0/Android/.PERMISSION_TEST"
  true >"$test_file"
  while [[ ! -f "$test_file" ]]; do
    true >"$test_file"
    sleep 1
  done
  rm -f "$test_file"
}


wait_until_login
sleep 90
lock_val "902400" /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
lock_val "1651200" /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
lock_val "1708800" /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq
exit 0