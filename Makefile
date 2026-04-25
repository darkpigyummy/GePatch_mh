TARGET = ge_mh_patch
OBJS = main.o gu.o exports.o

BUILD_PRX = 1
USE_KERNEL_LIBC = 1
USE_KERNEL_LIBS = 1

PRX_EXPORTS = exports.exp

CFLAGS = -O2 -G0 -Wall -fno-pic -ffunction-sections -fdata-sections
CXXFLAGS = $(CFLAGS)

LIBS = -lpspsystemctrl_kernel -lpspkernel

PSPSDK = $(shell psp-config --pspsdk-path)

include $(PSPSDK)/lib/build_prx.mak
