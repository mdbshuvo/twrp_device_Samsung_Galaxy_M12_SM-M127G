#!/sbin/sh

setenforce 0

# Get your device's block path where "system", "recovery", etc. lives.
# That can be "/dev/block/bootdevice/by-name" or something like that.

# for my device there is no bootdevice thingy
mkdir -p /dev/block/by-name/
busybox mount -o bind /dev/block/by-name/ /dev/block/by-name/

# Previously
# mkdir -p /dev/block/platform/mtk-msdc.0/by-name/
# busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/ /dev/block/platform/mtk-msdc.0/by-name/