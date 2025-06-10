.PHONY: letters letters.assets letters.clean

letters: letters.zip

.letters.pre:
	mkdir -p letters
	touch .letters.pre

letters.clean:
	-rm letters.zip .letters.pre
	-rm -rf letters/

letters.assets= \
  letters/darwinishere_rhinoceros_subtitle.png \
  letters/themaking_closing_subtitle.png \
  letters/hangoroshi_dialect_subtitle.png

letters.assets: $(letters.assets)

letters.zip: $(letters.assets) letters/meta.json
	cd letters/ && zip ../letters.zip meta.json ./*.png

letters/meta.json: ../letters/meta.json .letters.pre
	.script/build_metadata.sh "$<" > "$@"

letters/%.png: ../letters/%.svg .letters.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"
