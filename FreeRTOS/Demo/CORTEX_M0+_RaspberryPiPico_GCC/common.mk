CC = arm-none-eabi-gcc
BUILD_DIR := build
LDFLAGS = -T ./linker_scripts/memmap_default.ld --specs=nosys.specs -nostartfiles
LDFLAGS += -Xlinker -Map=${BUILD_DIR}/output.map

CFLAGS += -march=armv6-m -mcpu=cortex-m0plus -mthumb
CFLAGS += -Wno-error=implicit-function-declaration
CFLAGS += -Wno-builtin-declaration-mismatch -Werror

ifeq ($(DEBUG), 1)
    CFLAGS += -ggdb3 -Og
else
    CFLAGS += -O3
endif
    CFLAGS += -fstrict-aliasing -Wstrict-aliasing
