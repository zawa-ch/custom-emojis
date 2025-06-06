
.PHONY: text text.clean

text: text.zip

.text.pre:
	mkdir -p text && \
	touch .text.pre

text.clean:
	-rm text.zip .text.pre
	-rm -rf text/

text.zip: text/meta.json text/darwinishere_rhinoceros_subtitle.png text/themaking_closing_subtitle.png text/hangoroshi_dialect_subtitle.png
	cd text/ && zip ../text.zip meta.json ./*.png

text/meta.json: .text.pre ../text/meta.json
	jq -c '.' ../text/meta.json > text/meta.json

text/darwinishere_rhinoceros_subtitle.png: .text.pre ../text/darwinishere_rhinoceros_subtitle.svg
	resvg -z 4.0 --dpi 384 ../text/darwinishere_rhinoceros_subtitle.svg text/darwinishere_rhinoceros_subtitle.png
	optipng -q text/darwinishere_rhinoceros_subtitle.png

text/themaking_closing_subtitle.png: .text.pre ../text/themaking_closing_subtitle.svg
	resvg -z 4.0 --dpi 384 ../text/themaking_closing_subtitle.svg text/themaking_closing_subtitle.png
	optipng -q text/themaking_closing_subtitle.png

text/hangoroshi_dialect_subtitle.png: .text.pre ../text/hangoroshi_dialect_subtitle.svg
	resvg -z 4.0 --dpi 384 ../text/hangoroshi_dialect_subtitle.svg text/hangoroshi_dialect_subtitle.png
	optipng -q text/hangoroshi_dialect_subtitle.png
