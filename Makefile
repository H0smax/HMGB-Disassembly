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

# ---------------------------------------------------------------------------
# Source files
# ---------------------------------------------------------------------------

# Collect every .asm file inside disassembly/ recursively.
rwildcard = $(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

ASM_FILES := $(call rwildcard,disassembly,*.asm)
ENTRY     := disassembly/game.asm

ROM := HMGB.gb

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
#   Cartridge type  $1B  → MBC5 + RAM + BATTERY
#   ROM size        $06  → 4 MB  (256 banks)  — but the actual ROM is smaller;
#                          rgbfix validates against the file size, so leave it.
#   RAM size        $03  → 32 KB
#   Destination     $01  → Non-Japanese
#   Old licensee    $33  → Use new licensee code
#   New licensee    "VK" → Natsume (verify from your ROM header if different)
FXFLAGS := \
	--mbc-type 0x1B \
	--ram-size 0x03 \
	--non-japanese \
	--old-licensee 0x33 \
	--new-licensee "VK" \
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
	$(ASM) $(ASFLAGS) -I disassembly/ -o $@ $(ENTRY)

# Step 2 — Link into a ROM.
$(ROM): build/main.o
	$(LD) $(LDFLAGS) -n build/HMGB.sym -o $@ $^
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
	@md5sum -c HMGB.md5
	@echo "OK — ROM matches the original."

clean:
	rm -f $(ROM) $(ROM:.gb=.sym) $(ROM:.gb=.map)
	rm -rf build/