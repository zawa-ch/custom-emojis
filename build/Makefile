.PHONY: all clean help assets emojis emojis.clean emojis.check

all: emojis \
  handwritten \
  LEDMatrix \
  letters \
  militarygrade \
  shields

clean: emojis.clean \
  handwritten.clean \
  LEDMatrix.clean \
  letters.clean \
  militarygrade.clean \
  shields.clean

assets: \
  handwritten.assets \
  LEDMatrix.assets \
  letters.assets \
  militarygrade.assets \
  shields.assets

check: emojis.check \
  handwritten.check \
  LEDMatrix.check \
  letters.check \
  militarygrade.check \
  shields.check

help:
	@echo "build mi-emojis"
	@echo ""
	@echo "Meta targets:"
	@echo "* all    | build all targets"
	@echo "* emojis | build emoji bundle"
	@echo "* assets | build all assets"
	@echo "* check  | check metadata intefrity"
	@echo "* clean  | clean build directory"
	@echo "Individual targets:"
	@echo "> handwritten LEDMatrix letters militarygrade shields"
	@echo "* <target>.assets | build asset only"
	@echo "* <target>.check  | check metadata integrity"
	@echo "* <target>.clean  | clean target"

include handwritten.mk
include LEDMatrix.mk
include letters.mk
include militarygrade.mk
include shields.mk

emojis: emojis.zip

.emojis.pre:
	mkdir -p emojis
	touch .emojis.pre

emojis.clean:
	-rm emojis.zip .emojis.pre
	-rm -rf emojis/

emojis.check: emojis
	.script/check_metadata_integrity.sh "emojis"

emojis.assets= \
  $(handwritten.assets) \
  $(LEDMatrix.assets) \
  $(letters.assets) \
  $(militarygrade.assets) \
  $(shields.assets)

emojis.zip: $(emojis.assets) .emojis.pre
	cp -t emojis/ handwritten/*.png LEDMatrix/*.png letters/*.png militarygrade/*.png shields/*.png
	.script/merge_metadata.sh handwritten/meta.json LEDMatrix/meta.json letters/meta.json militarygrade/meta.json shields/meta.json >emojis/meta.json
	cd emojis/ && zip ../emojis.zip meta.json ./*.png
