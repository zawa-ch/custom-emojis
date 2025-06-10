.PHONY: square square.assets square.clean

square: square.zip

.square.pre:
	mkdir -p square
	touch .square.pre

square.clean:
	-rm square.zip .square.pre
	-rm -rf square/

square.assets= \
   square/square_daitaisou.png \
   square/square_issyoniblackholejikkenshiyo.png \
   square/square_nikutabeyoniku.png \
   square/square_omaenitaihojougadeteiru.png

square.assets: $(square.assets)

square.zip: $(square.assets) square/meta.json
	cd square/ && zip ../square.zip meta.json ./*.png

square/meta.json: ../square/meta.json .square.pre
	.script/build_metadata.sh "$<" > "$@"

square/%.png: ../square/%.svg .square.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"
