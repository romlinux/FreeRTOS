LINKER_SCRIPT = ../linker_scripts/boot_stage2.ld

include ../common.mk

BOOT2_SOURCES += boot2_w25q080.S
BOOT2_INCLUDE_DIRS += -I ../includes -I ../includes/regs
$(BUILD_DIR)/boot2/boot2.elf: $(BUILD_DIR)/boot2/boot2.o
	mkdir -p $(@D)
	$(CC) $(CFLAGS) $(BOOT2_INCLUDE_DIRS) $(LDFLAGS) $(BUILD_DIR)/boot2/boot2.o -o $@

$(BUILD_DIR)/boot2/boot2.o: $(BOOT2_SOURCES)
	mkdir -p $(@D)
	$(CC) $(CFLAGS) $(BOOT2_INCLUDE_DIRS) -c $(BOOT2_SOURCES) -o $@

clean:
	-rm -rf build
