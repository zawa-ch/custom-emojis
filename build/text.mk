.PHONY: text text.assets text.clean

text: text.zip

.text.pre:
	mkdir -p text
	touch .text.pre

text.clean:
	-rm text.zip .text.pre
	-rm -rf text/

text.assets= \
  text/darwinishere_rhinoceros_subtitle.png \
  text/themaking_closing_subtitle.png \
  text/hangoroshi_dialect_subtitle.png

text.assets: $(text.assets)

text.zip: $(text.assets) text/meta.json
	cd text/ && zip ../text.zip meta.json ./*.png

text/meta.json: ../text/meta.json .text.pre
	.script/build_metadata.sh "$<" > "$@"

text/%.png: ../text/%.svg .text.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"
