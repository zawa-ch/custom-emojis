
.PHONY: LEDMatrix LEDMatrix.clean

LEDMatrix: LEDMatrix.zip

.LEDMatrix.pre:
	-mkdir -p LEDMatrix && \
	touch .LEDMatrix.pre

LEDMatrix.clean:
	-rm LEDMatrix.zip .LEDMatrix.pre
	-rm -rf LEDMatrix/

LEDMatrix.zip: LEDMatrix/meta.json LEDMatrix/ledmatrix_ev_digiteight.png LEDMatrix/ledmatrix_ev_digitfive.png LEDMatrix/ledmatrix_ev_digitfour.png LEDMatrix/ledmatrix_ev_digitnine.png LEDMatrix/ledmatrix_ev_digitone.png LEDMatrix/ledmatrix_ev_digitseven.png LEDMatrix/ledmatrix_ev_digitsix.png LEDMatrix/ledmatrix_ev_digitthree.png LEDMatrix/ledmatrix_ev_digittwo.png LEDMatrix/ledmatrix_ev_digitzero.png LEDMatrix/ledmatrix_ev_downwardsarrow.png LEDMatrix/ledmatrix_ev_downwardsarrow_a.png LEDMatrix/ledmatrix_ev_fullblock.png LEDMatrix/ledmatrix_ev_latincapitalletterb.png LEDMatrix/ledmatrix_ev_latincapitalletterg.png LEDMatrix/ledmatrix_ev_latincapitalletterr.png LEDMatrix/ledmatrix_ev_space.png LEDMatrix/ledmatrix_ev_upwardsarrow.png LEDMatrix/ledmatrix_ev_upwardsarrow_a.png LEDMatrix/ledmatrix_r16_nextis.png LEDMatrix/ledmatrix_r16_nextomaeda.png
	cd LEDMatrix/ && zip ../LEDMatrix.zip meta.json ./*.png

LEDMatrix/meta.json: .LEDMatrix.pre ../LEDMatrix/meta.json
	jq -c '.' ../LEDMatrix/meta.json > LEDMatrix/meta.json

LEDMatrix/ledmatrix_ev_digiteight.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digiteight.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digiteight.svg LEDMatrix/ledmatrix_ev_digiteight.png && optipng -q LEDMatrix/ledmatrix_ev_digiteight.png

LEDMatrix/ledmatrix_ev_digitfive.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digitfive.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digitfive.svg LEDMatrix/ledmatrix_ev_digitfive.png && optipng -q LEDMatrix/ledmatrix_ev_digitfive.png

LEDMatrix/ledmatrix_ev_digitfour.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digitfour.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digitfour.svg LEDMatrix/ledmatrix_ev_digitfour.png && optipng -q LEDMatrix/ledmatrix_ev_digitfour.png

LEDMatrix/ledmatrix_ev_digitnine.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digitnine.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digitnine.svg LEDMatrix/ledmatrix_ev_digitnine.png && optipng -q LEDMatrix/ledmatrix_ev_digitnine.png

LEDMatrix/ledmatrix_ev_digitone.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digitone.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digitone.svg LEDMatrix/ledmatrix_ev_digitone.png && optipng -q LEDMatrix/ledmatrix_ev_digitone.png

LEDMatrix/ledmatrix_ev_digitseven.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digitseven.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digitseven.svg LEDMatrix/ledmatrix_ev_digitseven.png && optipng -q LEDMatrix/ledmatrix_ev_digitseven.png

LEDMatrix/ledmatrix_ev_digitsix.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digitsix.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digitsix.svg LEDMatrix/ledmatrix_ev_digitsix.png && optipng -q LEDMatrix/ledmatrix_ev_digitsix.png

LEDMatrix/ledmatrix_ev_digitthree.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digitthree.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digitthree.svg LEDMatrix/ledmatrix_ev_digitthree.png && optipng -q LEDMatrix/ledmatrix_ev_digitthree.png

LEDMatrix/ledmatrix_ev_digittwo.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digittwo.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digittwo.svg LEDMatrix/ledmatrix_ev_digittwo.png && optipng -q LEDMatrix/ledmatrix_ev_digittwo.png

LEDMatrix/ledmatrix_ev_digitzero.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_digitzero.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_digitzero.svg LEDMatrix/ledmatrix_ev_digitzero.png && optipng -q LEDMatrix/ledmatrix_ev_digitzero.png

LEDMatrix/ledmatrix_ev_downwardsarrow.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg LEDMatrix/ledmatrix_ev_downwardsarrow.png && optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a.png: .LEDMatrix.pre LEDMatrix/ledmatrix_ev_downwardsarrow_a/01.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/02.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/03.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/04.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/05.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/06.png
	apngasm -F -d 1:4 -o LEDMatrix/ledmatrix_ev_downwardsarrow_a.png LEDMatrix/ledmatrix_ev_downwardsarrow_a/*.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/01.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/01.png" --export-page=1 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/01.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/02.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/02.png" --export-page=2 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/02.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/03.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/03.png" --export-page=3 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/03.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/04.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/04.png" --export-page=4 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/04.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/05.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/05.png" --export-page=5 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/05.png

LEDMatrix/ledmatrix_ev_downwardsarrow_a/06.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_downwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_downwardsarrow_a/06.png" --export-page=6 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_downwardsarrow_a/06.png

LEDMatrix/ledmatrix_ev_fullblock.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_fullblock.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_fullblock.svg LEDMatrix/ledmatrix_ev_fullblock.png && optipng -q LEDMatrix/ledmatrix_ev_fullblock.png

LEDMatrix/ledmatrix_ev_latincapitalletterb.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_latincapitalletterb.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_latincapitalletterb.svg LEDMatrix/ledmatrix_ev_latincapitalletterb.png && optipng -q LEDMatrix/ledmatrix_ev_latincapitalletterb.png

LEDMatrix/ledmatrix_ev_latincapitalletterg.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_latincapitalletterg.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_latincapitalletterg.svg LEDMatrix/ledmatrix_ev_latincapitalletterg.png && optipng -q LEDMatrix/ledmatrix_ev_latincapitalletterg.png

LEDMatrix/ledmatrix_ev_latincapitalletterr.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_latincapitalletterr.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_latincapitalletterr.svg LEDMatrix/ledmatrix_ev_latincapitalletterr.png && optipng -q LEDMatrix/ledmatrix_ev_latincapitalletterr.png

LEDMatrix/ledmatrix_ev_space.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_space.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_space.svg LEDMatrix/ledmatrix_ev_space.png && optipng -q LEDMatrix/ledmatrix_ev_space.png

LEDMatrix/ledmatrix_ev_upwardsarrow.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_upwardsarrow.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/Elevator/ledmatrix_ev_upwardsarrow.svg LEDMatrix/ledmatrix_ev_upwardsarrow.png && optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a.png: .LEDMatrix.pre LEDMatrix/ledmatrix_ev_upwardsarrow_a/01.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/02.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/03.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/04.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/05.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/06.png
	apngasm -F -d 1:4 -o LEDMatrix/ledmatrix_ev_upwardsarrow_a.png LEDMatrix/ledmatrix_ev_upwardsarrow_a/*.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/01.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/01.png" --export-page=1 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/01.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/02.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/02.png" --export-page=2 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/02.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/03.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/03.png" --export-page=3 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/03.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/04.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/04.png" --export-page=4 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/04.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/05.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/05.png" --export-page=5 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/05.png

LEDMatrix/ledmatrix_ev_upwardsarrow_a/06.png: .LEDMatrix.pre ../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg
	mkdir -p LEDMatrix/ledmatrix_ev_upwardsarrow_a && inkscape -o "LEDMatrix/ledmatrix_ev_upwardsarrow_a/06.png" --export-page=6 -d 384 "../LEDMatrix/Elevator/ledmatrix_ev_downwardsarrow.svg" && optipng -q LEDMatrix/ledmatrix_ev_upwardsarrow_a/06.png

LEDMatrix/ledmatrix_r16_nextis.png: .LEDMatrix.pre ../LEDMatrix/R16/ledmatrix_r16_nextis.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/R16/ledmatrix_r16_nextis.svg LEDMatrix/ledmatrix_r16_nextis.png && optipng -q LEDMatrix/ledmatrix_r16_nextis.png

LEDMatrix/ledmatrix_r16_nextomaeda.png: .LEDMatrix.pre ../LEDMatrix/R16/ledmatrix_r16_nextomaeda.svg
	resvg -z 4.0 --dpi 384 ../LEDMatrix/R16/ledmatrix_r16_nextomaeda.svg LEDMatrix/ledmatrix_r16_nextomaeda.png && optipng -q LEDMatrix/ledmatrix_r16_nextomaeda.png
