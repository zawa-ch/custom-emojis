
.PHONY: square square.clean

square: square.zip

.square.pre:
	-mkdir -p square && \
	touch .square.pre

square.clean:
	-rm square.zip .square.pre
	-rm -rf square/

square.zip: square/meta.json square/square_daitaisou.png square/square_issyoniblackholejikkenshiyo.png square/square_nikutabeyoniku.png square/square_omaenitaihojougadeteiru.png
	cd square/ && zip ../square.zip ./*

square/meta.json: .square.pre ../square/meta.json
	jq -c '.' ../square/meta.json > square/meta.json

square/square_daitaisou.png: .square.pre ../square/square_daitaisou.svg
	resvg -z 4.0 --dpi 384 ../square/square_daitaisou.svg square/square_daitaisou.png && optipng -q square/square_daitaisou.png

square/square_issyoniblackholejikkenshiyo.png: .square.pre ../square/square_issyoniblackholejikkenshiyo.svg
	resvg -z 4.0 --dpi 384 ../square/square_issyoniblackholejikkenshiyo.svg square/square_issyoniblackholejikkenshiyo.png && optipng -q square/square_issyoniblackholejikkenshiyo.png

square/square_nikutabeyoniku.png: .square.pre ../square/square_nikutabeyoniku.svg
	resvg -z 4.0 --dpi 384 ../square/square_nikutabeyoniku.svg square/square_nikutabeyoniku.png && optipng -q square/square_nikutabeyoniku.png

square/square_omaenitaihojougadeteiru.png: .square.pre ../square/square_omaenitaihojougadeteiru.svg
	resvg -z 4.0 --dpi 384 ../square/square_omaenitaihojougadeteiru.svg square/square_omaenitaihojougadeteiru.png && optipng -q square/square_omaenitaihojougadeteiru.png