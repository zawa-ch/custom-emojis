.PHONY: all clean help

all: \
  handwritten.stellar_ch \
  LEDMatrix \
  letters \
  militarygrade \
  shields

clean: \
  handwritten.stellar_ch.clean \
  LEDMatrix.clean \
  letters.clean \
  militarygrade.clean \
  shields.clean

help:
	@echo "build mi-emojis"
	@echo ""
	@echo "Meta targets:"
	@echo "* all   | build all targets"
	@echo "* clean | clean build directory"
	@echo "Individual targets:"
	@echo "> handwritten.stellar_ch LEDMatrix letters militarygrade shields"
	@echo "* <target>.clean | clean target"

include handwritten.stellar_ch.mk
include LEDMatrix.mk
include letters.mk
include militarygrade.mk
include shields.mk
