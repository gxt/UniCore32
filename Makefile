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
	@echo "For ONE core: make highfive"
	@echo "     or: make clean"
	@echo "     or: make busybox"
	@echo ""
	@echo "Running qemu and get trace"
	@echo "     make qemu-run  (file and local mode)"
	@echo ""

include Makefile.linux
include Makefile.qemu
include Makefile.u-boot
include Makefile.initramfs

highfive:
	@make clean
	@make busybox
	@make linux-new
	@make linux-make
	@make qemu-new
	@make qemu-make

clean:
	@rm -fr $(DIR_WORKING)

