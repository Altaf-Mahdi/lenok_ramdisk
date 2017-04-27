#!/system/bin/sh

# Install busybox
if [ ! -f /system/xbin/busybox ];
then

mount -o rw,remount /system
cp /sbin/busybox /system/xbin/
chmod 755 /system/xbin/busybox
/system/xbin/busybox --install -s /system/xbin
mount -o ro,remount /system

fi
