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

assets: \
  handwritten.stellar_ch.assets \
  LEDMatrix.assets \
  letters.assets \
  militarygrade.assets \
  shields.assets

check: \
  handwritten.stellar_ch.check \
  LEDMatrix.check \
  letters.check \
  militarygrade.check \
  shields.check

help:
	@echo "build mi-emojis"
	@echo ""
	@echo "Meta targets:"
	@echo "* all    | build all targets"
	@echo "* assets | build all assets"
	@echo "* check  | check metadata intefrity"
	@echo "* clean  | clean build directory"
	@echo "Individual targets:"
	@echo "> handwritten.stellar_ch LEDMatrix letters militarygrade shields"
	@echo "* <target>.assets | build asset only"
	@echo "* <target>.check  | check metadata integrity"
	@echo "* <target>.clean  | clean target"

include handwritten.stellar_ch.mk
include LEDMatrix.mk
include letters.mk
include militarygrade.mk
include shields.mk
