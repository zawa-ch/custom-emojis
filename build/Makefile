.PHONY: all clean help

all: \
  handwritten.stellar_ch \
  LEDMatrix \
  letters \
  militarygrade \
  shields \
  square_animated

clean: \
  handwritten.stellar_ch.clean \
  LEDMatrix.clean \
  letters.clean \
  militarygrade.clean \
  shields.clean \
  square_animated.clean

help:
	@echo "build mi-emojis"
	@echo ""
	@echo "Meta targets:"
	@echo "* all   | build all targets"
	@echo "* clean | clean build directory"
	@echo "Individual targets:"
	@echo "> handwritten.stellar_ch LEDMatrix letters militarygrade shields square_animated"
	@echo "* <target>.clean | clean target"

include handwritten.stellar_ch.mk
include LEDMatrix.mk
include letters.mk
include militarygrade.mk
include shields.mk
include square_animated.mk
