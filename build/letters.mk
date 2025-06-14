.PHONY: letters letters.assets letters.clean letters.check

letters: letters.zip

.letters.pre:
	mkdir -p letters
	touch .letters.pre

letters.clean:
	-rm letters.zip .letters.pre
	-rm -rf letters/

letters.check: letters
	.script/check_metadata_integrity.sh "letters"

letters.assets= letters/meta.json \
  letters/black_squared_neon_igyo.png \
  letters/darwinishere_rhinoceros_subtitle.png \
  letters/themaking_closing_subtitle.png \
  letters/hangoroshi_dialect_subtitle.png \
  letters/rotating_threedimensional_gold_igyo.png \
  letters/square_daitaisou.png \
  letters/square_issyoniblackholejikkenshiyo.png \
  letters/square_meijitsutomonitaikin.png \
  letters/square_nikutabeyoniku.png \
  letters/square_omaenitaihojougadeteiru.png

letters.assets: $(letters.assets)

letters.zip: $(letters.assets)
	cd letters/ && zip ../letters.zip meta.json ./*.png

letters/meta.json: ../letters/meta.json .letters.pre
	.script/build_metadata.sh "$<" > "$@"

letters/%.png:: ../letters/%.svg .letters.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

letters/black_squared_neon_igyo.png: .letters.pre letters/black_squared_neon_igyo/0.png
	apngasm -F -d 1:8 -o letters/black_squared_neon_igyo.png letters/black_squared_neon_igyo/*.png

letters/black_squared_neon_igyo/0.png: .letters.pre ../letters/black_squared_neon_igyo.rawr
	mkdir -p letters/black_squared_neon_igyo
	.script/fe_glaxnimate.sh -r letters/black_squared_neon_igyo/.png --render-format png --frame all ../letters/black_squared_neon_igyo.rawr

letters/rotating_threedimensional_gold_igyo.png: .letters.pre letters/rotating_threedimensional_gold_igyo/00.png
	apngasm -F -d 1:24 -o letters/rotating_threedimensional_gold_igyo.png letters/rotating_threedimensional_gold_igyo/*.png

letters/rotating_threedimensional_gold_igyo/00.png: .letters.pre ../letters/rotating_threedimensional_gold_igyo.blend
	mkdir -p letters/rotating_threedimensional_gold_igyo
	.script/fe_blender.sh -q -b "../letters/rotating_threedimensional_gold_igyo.blend" -o "letters/rotating_threedimensional_gold_igyo/##.png" -a

letters/square_meijitsutomonitaikin.png: .letters.pre letters/square_meijitsutomonitaikin/00.png
	apngasm -F -d 1:24 -o letters/square_meijitsutomonitaikin.png letters/square_meijitsutomonitaikin/*.png

letters/square_meijitsutomonitaikin/00.png: .letters.pre ../letters/square_meijitsutomonitaikin.rawr
	mkdir -p letters/square_meijitsutomonitaikin
	.script/fe_glaxnimate.sh -r letters/square_meijitsutomonitaikin/.png --render-format png --frame all ../letters/square_meijitsutomonitaikin.rawr
