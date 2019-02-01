# UniCore32 environment

Version: 1.0
Linux-stable version: 4.9.150
Qemu version: stable-2.7
Busybox version: 1-20-stable
Test bed: ubuntu 16.04.5

## Step to run linux on qemu

make busybox-1-20-new
make busybox-1-20-make
make initramfs-busybox-1-20

make linux-0409-new
make linux-0409-make-qemu

make qemu-0207-new
make qemu-0207-make

make qemu-0207-run
