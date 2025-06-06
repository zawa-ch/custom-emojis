
.PHONY: all clean help

all: handwritten.stellar_ch LEDMatrix militarygrade shields square_animated square text

clean: handwritten.stellar_ch.clean LEDMatrix.clean militarygrade.clean shields.clean square_animated.clean square.clean text.clean

help:
	@echo "build mi-emojis"
	@echo ""
	@echo "Meta targets:"
	@echo "* all   | build all targets"
	@echo "* clean | clean build directory"
	@echo "Individual targets:"
	@echo "> handwritten.stellar_ch LEDMatrix militarygrade shields square_animated square text"
	@echo "* <target>.clean | clean target"

include handwritten.stellar_ch.mk
include LEDMatrix.mk
include militarygrade.mk
include shields.mk
include square_animated.mk
include square.mk
include text.mk
