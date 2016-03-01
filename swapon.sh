#!/system/bin/sh
#-----------------------------------------
# Yank555.lu - activate swap on hammerhead
#-----------------------------------------

# - zSwap activation - 768Mb
if [ -e /sys/block/vnswap0/disksize ] ; then

  /system/xbin/swapoff /dev/block/vnswap0

  echo 805306368 > /sys/block/vnswap0/disksize

  /system/xbin/mkswap /dev/block/vnswap0

  /system/xbin/swapon /dev/block/vnswap0
  
fi

# - swappiness set to 80
echo 80 > /proc/sys/vm/swappiness

