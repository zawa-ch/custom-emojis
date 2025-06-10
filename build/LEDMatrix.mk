.PHONY: LEDMatrix LEDMatrix.assets LEDMatrix.clean LEDMatrix.check

LEDMatrix: LEDMatrix.zip

.LEDMatrix.pre:
	mkdir -p LEDMatrix
	touch .LEDMatrix.pre

LEDMatrix.clean:
	-rm LEDMatrix.zip .LEDMatrix.pre
	-rm -rf LEDMatrix/

LEDMatrix.check: LEDMatrix
	.script/check_metadata_integrity.sh "LEDMatrix"

LEDMatrix.assets= \
  LEDMatrix/ledmatrix_ev_digiteight.png \
  LEDMatrix/ledmatrix_ev_digitfive.png \
  LEDMatrix/ledmatrix_ev_digitfour.png \
  LEDMatrix/ledmatrix_ev_digitnine.png \
  LEDMatrix/ledmatrix_ev_digitone.png \
  LEDMatrix/ledmatrix_ev_digitseven.png \
  LEDMatrix/ledmatrix_ev_digitsix.png \
  LEDMatrix/ledmatrix_ev_digitthree.png \
  LEDMatrix/ledmatrix_ev_digittwo.png \
  LEDMatrix/ledmatrix_ev_digitzero.png \
  LEDMatrix/ledmatrix_ev_downwardsarrow.png \
  LEDMatrix/ledmatrix_ev_downwardsarrow_a.png \
  LEDMatrix/ledmatrix_ev_fullblock.png \
  LEDMatrix/ledmatrix_ev_latincapitalletterb.png \
  LEDMatrix/ledmatrix_ev_latincapitalletterg.png \
  LEDMatrix/ledmatrix_ev_latincapitalletterr.png \
  LEDMatrix/ledmatrix_ev_space.png \
  LEDMatrix/ledmatrix_ev_upwardsarrow.png \
  LEDMatrix/ledmatrix_ev_upwardsarrow_a.png \
  LEDMatrix/ledmatrix_r16_nextis.png \
  LEDMatrix/ledmatrix_r16_nextomaeda.png

LEDMatrix.assets: $(LEDMatrix.assets)

LEDMatrix.zip: $(LEDMatrix.assets) LEDMatrix/meta.json
	cd LEDMatrix/ && zip ../LEDMatrix.zip meta.json ./*.png

LEDMatrix/meta.json: ../LEDMatrix/meta.json .LEDMatrix.pre
	.script/build_metadata.sh ../LEDMatrix/meta.json > LEDMatrix/meta.json

LEDMatrix/ledmatrix_ev_%.png: ../LEDMatrix/Elevator/ledmatrix_ev_%.svg .LEDMatrix.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

LEDMatrix/ledmatrix_r16_%.png: ../LEDMatrix/R16/ledmatrix_r16_%.svg .LEDMatrix.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

LEDMatrix/ledmatrix_ev_downwardsarrow_a.png: .LEDMatrix.pre LEDMatrix/ledmatrix_ev_downwardsarrow_a/01.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/02.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/03.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/04.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/05.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/06.png
	apngasm -F -d 1:4 -o LEDMatrix/ledmatrix_ev_downwardsarrow_a.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/*.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/01.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/01.png" --export-page=1 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/01.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/02.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/02.png" --export-page=2 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/02.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/03.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/03.png" --export-page=3 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/03.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/04.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/04.png" --export-page=4 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/04.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/05.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/05.png" --export-page=5 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/05.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/06.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/06.png" --export-page=6 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/06.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a.png: .LEDMatrix.pre LEDMatrix/ledmatrix_ev_upwardsarrow_a/01.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/02.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/03.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/04.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/05.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/06.png
	apngasm -F -d 1:4 -o LEDMatrix/ledmatrix_ev_upwardsarrow_a.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/*.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/01.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/01.png" --export-page=1 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/01.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/02.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/02.png" --export-page=2 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/02.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/03.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/03.png" --export-page=3 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/03.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/04.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/04.png" --export-page=4 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/04.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/05.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/05.png" --export-page=5 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/05.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/06.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a
	inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/06.png" --export-page=6 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg"
	optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/06.png
