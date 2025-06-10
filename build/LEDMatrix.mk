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
  LEDMatrix/ledmatrix_r16_nextomaeda.png \
  LEDMatrix/ledmatrix_r16_notification.png

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

LEDMatrix/ledmatrix_ev_downwardsarrow_a.png: .LEDMatrix.pre LEDMatrix/ledmatrix_ev_downwardsarrow_a/0.png
	apngasm -F -d 1:4 -o LEDMatrix/ledmatrix_ev_downwardsarrow_a.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/*.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/0.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow_a.rawr
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a
	.script/fe_glaxnimate.sh -r LEDMatrix/ledmatrix_ev_downwardsarrow_a/.png --render-format png --frame all ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow_a.rawr

LEDMatrix/ledmatrix_ev_upwardsarrow_a.png: .LEDMatrix.pre LEDMatrix/ledmatrix_ev_upwardsarrow_a/0.png
	apngasm -F -d 1:4 -o LEDMatrix/ledmatrix_ev_upwardsarrow_a.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/*.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/0.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_upwardsarrow_a.rawr
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a
	.script/fe_glaxnimate.sh -r LEDMatrix/ledmatrix_ev_upwardsarrow_a/.png --render-format png --frame all ../LEDMatrix/Elevator/ledmatrix_ev_upwardsarrow_a.rawr
