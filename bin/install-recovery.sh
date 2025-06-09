#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9238528 ba2582b8f44e32248cc9936f336f57a767fcf550 5115904 72aff0feb7ab50bde76ea31552e04252b5454332
fi
if ! applypatch -c EMMC:/dev/recovery:9238528:ba2582b8f44e32248cc9936f336f57a767fcf550; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:5115904:72aff0feb7ab50bde76ea31552e04252b5454332 EMMC:/dev/recovery ba2582b8f44e32248cc9936f336f57a767fcf550 9238528 72aff0feb7ab50bde76ea31552e04252b5454332:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
