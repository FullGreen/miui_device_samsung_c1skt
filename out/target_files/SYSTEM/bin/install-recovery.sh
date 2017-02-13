#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6656000 fd335ada6f9b0890017d7a7809670feb7e5cc82c 4257792 6c47c0d28e902fcf0ff7de5731a7370af07828bb
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:6656000:fd335ada6f9b0890017d7a7809670feb7e5cc82c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:4257792:6c47c0d28e902fcf0ff7de5731a7370af07828bb EMMC:/dev/block/mmcblk0p6 fd335ada6f9b0890017d7a7809670feb7e5cc82c 6656000 6c47c0d28e902fcf0ff7de5731a7370af07828bb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
