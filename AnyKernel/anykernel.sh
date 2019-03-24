# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=WinX Kernel by @zantrash
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=redmi 5a
device.name2=riva
device.name3=redmi5a
device.name4=riva
device.name5=
supported.versions=
'; } # end properties

# shell variables
block=/dev/block/platform/omap/omap_hsmmc.0/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
ui_print "";

## AnyKernel install
dump_boot;

# AnyKernel Finish

write_boot;

## end install

