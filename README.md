# UniCore32 environment

## Linux kernel
Linux-stable base: 4.9.150-tao1

## Qemu simulator
Tested version: stable-2.7

## Step to run linux on qemu

make busybox-1-20-new
make busybox-1-20-make
make initramfs-busybox-1-20

make linux-0409-new
make linux-0409-make-qemu

make qemu-0207-new
make qemu-0207-make

make qemu-0207-run
