.POSIX:
.SUFFIXES:
.PHONY: default build test clean

# ---------------------------------------------------------------------------
# Tool configuration
# ---------------------------------------------------------------------------

# If RGBDS tools are not on PATH, set the prefix here.
# Example: RGBDS := /opt/rgbds/
RGBDS :=

ASM  := $(RGBDS)rgbasm
LD   := $(RGBDS)rgblink
FX   := $(RGBDS)rgbfix

MGBDIS := python3 tools/external/mgbdis/mgbdis.py

# ---------------------------------------------------------------------------
# Source files
# ---------------------------------------------------------------------------

# Collect every .asm file inside disassembly/ recursively.
rwildcard = $(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

ASM_FILES := $(call rwildcard,src,*.asm)
ENTRY     := src/game.asm

ROM := build/HMGB.gb
ROM_ORIGINAL := HMGB.gb

# ---------------------------------------------------------------------------
# Assembler / linker / fixer flags
#
# These values are read directly from the header of the original ROM.
# ---------------------------------------------------------------------------

ASFLAGS := \
	--export-all \
	-Weverything

LDFLAGS := \
	-Weverything

# Flags derived from the Harvest Moon GB header:
#   Cartridge type  $10  → MBC3 + RTC + SRAM + BATTERY
#   ROM size        $04  → 512 KB
#   RAM size        $02  → 64 KB
#   Destination     $00  → Japanese
#   Old licensee    $33  → Use new licensee code
#   New licensee    "99" → Pack in soft
FXFLAGS := \
	--mbc-type 0x10 \
	--ram-size 0x02 \
	--old-licensee 0x33 \
	--new-licensee "99" \
	--pad-value 0xFF \
	--validate

# ---------------------------------------------------------------------------
# Build rules
# ---------------------------------------------------------------------------

# Default target: build and verify.
default: build test

# Step 1 — Assemble all source into a single object file.
build/main.o: $(ENTRY) $(ASM_FILES)
	@mkdir -p build
	$(ASM) $(ASFLAGS) -I src/ -o $@ $(ENTRY)

# Step 2 — Link into a ROM.
$(ROM): build/main.o
	$(LD) $(LDFLAGS) -n build/HMGB.sym -m build/HMGB.map -o $@ $^
	$(FX) $(FXFLAGS) $@

build: $(ROM)

# Step 3 — Verify the ROM is bit-for-bit identical to the original.
#
# HMGB.md5 should contain one line:
#   <md5sum>  HMGB.gb
#
# Generate it once with:
#   md5sum HMGB.gb > HMGB.md5          (Linux/macOS with GNU md5sum)
#   md5 -r HMGB.gb > HMGB.md5         (macOS with BSD md5)
test: build
	@echo "Verifying ROM checksum..."
	@cd build && md5sum -c ../HMGB.md5
	@echo "OK — ROM matches the original."

clean:
	rm -f $(ROM) $(ROM:.gb=.sym) $(ROM:.gb=.map)
	rm -rf build/

disassemble:
	$(MGBDIS) --overwrite --output-dir src/ $(ROM_ORIGINAL)
	mv src/bank_*.asm src/banks/
	sed -i 's/INCLUDE "bank_/INCLUDE "banks\/bank_/g' src/game.asm
	rm src/Makefile 
	$(MAKE) test