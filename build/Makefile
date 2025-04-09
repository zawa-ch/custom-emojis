
.PHONY: all clean help

all: militarygrade square_animated square

clean: militarygrade.clean square_animated.clean square.clean

help:
	@echo "build mi-emojis"
	@echo ""
	@echo "usable targets:"
	@echo "  all    build all targets"
	@echo "  clean  clean build directory"
	@echo "  militarygrade"
	@echo "  square_animated"
	@echo "  square"

include militarygrade.mk
include square_animated.mk
include square.mk
