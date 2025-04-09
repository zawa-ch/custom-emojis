
.PHONY: all clean help

all: handwritten.stellar_ch militarygrade square_animated square

clean: handwritten.stellar_ch.clean militarygrade.clean square_animated.clean square.clean

help:
	@echo "build mi-emojis"
	@echo ""
	@echo "usable targets:"
	@echo "  all    build all targets"
	@echo "  clean  clean build directory"
	@echo "  handwritten.stellar_ch"
	@echo "  militarygrade"
	@echo "  square_animated"
	@echo "  square"

include handwritten.stellar_ch.mk
include militarygrade.mk
include square_animated.mk
include square.mk
