# ArchLinux ARM packages



## What it is
This repo has some basic packages to get MythTV or EndeavourOS running on ArchLinux on ARM boxes.


## Goal
Getting easy running MythTV/EndeavourOS on some ARM boxes

## What is avaliable

Pls look in https://github.com/warpme/archlinuxarm/releases
You will find there:

### ArchLinux-*.img.xz
Ready to run ArchLinux ARM SD card image for Tanix-Tx6 TVbox & RPI4 SBC.
You can burn this to SD card, insert to TVbox and you should have running Archlinux.
After resizing root partition you can install i.e. EdneavourOS.
See instructions in https://github.com/warpme/archlinuxarm/blob/master/install_endeavouros.txt
5.15.6 kernel in this image supports TVboxes: https://github.com/warpme/minimyth2#current-status
and offers following video decode capabilities: https://github.com/warpme/minimyth2#hardware-video-decode-support

### linux-aarch64-5.15.6-1-any.pkg.tar.zst
ArchLinux package with 5.15.6 kernel. Useful when you want to upgrade Your Archlinux install with 5.15 kernel offering
functionality like described above.

### linux-api-headers-5.15.6-1-any.pkg.tar.zst linux-api-headers-5.15.6-1-any.pkg.tar.xz
ArchLinux package with 5.15.6 kernel API headers. ArchLinux package with 5.15.6 kernel api headers.
Useful when you want to upgrade Your Archlinux install with 5.15 kernel for development exploiting
functionality like described above.

### mythtv-base-master.20211204.976296fc-1-aarch64.pkg.tar.xz
Package with current MythTV master build offering playback capabilities like in 
https://github.com/warpme/minimyth2#hardware-video-decode-support

Happy Watching!
