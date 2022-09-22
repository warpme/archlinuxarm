# ArchLinux ARM packages



## What it is
This repo has Linux kernel with extended HW video decode capabilities suitable to run media players on 
ArchLinux, EndaevourOS on Allwinner, Rockchip and RPI ARM TV boxes / SBC.

Kernel in this repo supports: https://github.com/warpme/minimyth2#current-status
and offers following video decode capabilities: https://github.com/warpme/minimyth2#hardware-video-decode-support
with results like: https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt


## Goal
Getting easy running mediaplayers on Archlinuxarm or EndeavourOS on some ARM TV boxes.

## What is avaliable

Pls look in https://github.com/warpme/archlinuxarm/releases
You will find there:

### ArchLinux-*.img.xz
Ready to run ArchLinux ARM SD card image for Tanix-Tx6 TVbox & RPI4 SBC.
You can burn this to SD card, insert to TVbox and you should have running Archlinux.
After resizing root partition you can upgrade to most current kernel from this repo and install i.e. EdneavourOS.
See instructions in https://github.com/warpme/archlinuxarm/blob/master/install_endeavouros.txt

### linux-aarch64-5.19.9-1-aarch64.pkg.tar.xz
ArchLinux package with 5.19.9 kernel. Useful when you want to upgrade Your Archlinux install to 5.19 kernel offering
functionality like described above.

### mythtv-base master.20220919.3e35f6c0-1
Package with current MythTV master build offering playback capabilities like in 
https://github.com/warpme/minimyth2#hardware-video-decode-support

Happy Watching!
