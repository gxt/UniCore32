DIR_UNICORE32	:= $(shell pwd)
DIR_WORKING	:= $(DIR_UNICORE32)/working

CROSS_UNICORE32	:= /usr/unicore/gnu-toolchain-unicore/uc4
CROSS_LIB	:= $(CROSS_UNICORE32)/unicore32-linux/lib
CROSS_COMPILE	:= $(CROSS_UNICORE32)/bin/unicore32-linux-
OBJDUMP		:= $(CROSS_COMPILE)objdump

PATH		:= $(CROSS_UNICORE32)/bin:$(PATH)

all:
	@echo ""
	@echo "Enjoy UniCore32!"
	@echo ""
	@echo "Prepare to run qemu"
	@echo "     make highfive"
	@echo ""

include Makefile.linux
include Makefile.qemu
include Makefile.u-boot
include Makefile.initramfs

highfive:
	@make clean
	@make busybox-1-20-new
	@make busybox-1-20-make
	@make initramfs-busybox-1-20
	@make linux-0409-new
	@make linux-0409-make-qemu
	@make qemu-0207-new
	@make qemu-0207-make
	@echo ""
	@echo "Bingo! It's time to"
	@echo "    make qemu-0207-run"
	@echo ""

clean:
	@rm -fr $(DIR_WORKING)/*

