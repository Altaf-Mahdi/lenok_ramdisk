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

# Copy mpdecision binary in system/bin
if [ ! -f /system/bin/mpdecision ];
then

mount -o rw,remount /system

cp /sbin/mpdecision /system/bin/
chmod 0755 /system/bin/mpdecision
mount -o ro,remount /system

fi

mpdecision --avg_comp &

mount -o remount rw /
chmod 755 /sbin
mount -o remount ro /
