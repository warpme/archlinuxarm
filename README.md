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
After resizing root partition you can upgrade kernel(1) and install i.e. EdneavourOS.
See instructions in https://github.com/warpme/archlinuxarm/blob/master/install_endeavouros.txt

### linux-aarch64-5.19.9-1-aarch64.pkg.tar.xz
ArchLinux package with 5.19.9 kernel. Useful when you want to upgrade Your Archlinux install to 5.19 kernel offering
functionality like described above.

### mythtv-base master.20220919.3e35f6c0-1
Package with current MythTV master build offering playback capabilities like in 
https://github.com/warpme/minimyth2#hardware-video-decode-support

Happy Watching!

(1) New kernels are published in this repo in releases section.
Published kernel supports TVboxes: https://github.com/warpme/minimyth2#current-status
and offers following video decode capabilities: https://github.com/warpme/minimyth2#hardware-video-decode-support
with results like: https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt
